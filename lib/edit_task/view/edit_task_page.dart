import 'package:database_repository/database_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/app/bloc/todo_bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/edit_task/cubit/cubit.dart';
import 'package:todo_app/shared/shared.dart';
import 'package:todo_app/shared/widgets/unfocuser.dart';
import 'package:vrouter/vrouter.dart';

class EditTaskPage extends StatelessWidget {
  const EditTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoId = context.vRouter.pathParameters['todoId'];
    return BlocProvider(
      create: (context) => EditTaskCubit(todoId, context.read<TodoBloc>()),
      child: const EditTaskView(),
    );
  }
}

class EditTaskView extends StatefulWidget {
  const EditTaskView({Key? key}) : super(key: key);

  @override
  State<EditTaskView> createState() => _EditTaskViewState();
}

class _EditTaskViewState extends State<EditTaskView> {
  final dateFormat = DateFormat('yyyy-MM-dd');
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthBloc>();
    final editTaskCubit = context.read<EditTaskCubit>();
    final authState = auth.state as AuthLoggedIn;
    final theme = Theme.of(context);
    return BlocConsumer<EditTaskCubit, EditTaskState>(
      listener: (context, state) {
        if (state.isFinished) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            context.vRouter.pop();
          });
        } else if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.toString()),
            ),
          );
        }
      },
      builder: (context, state) {
        return Unfocuser(
          child: Scaffold(
            appBar: TopBar(
              tailChildren: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.network(
                      authState.user.pictureUrl,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            bottomNavigationBar: SafeArea(
              child: Hero(
                tag: 'bottomNavigationBar',
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16)
                      .copyWith(bottom: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: UNaviBar(
                      selectedIndex: 1,
                      onTap: (index) {
                        if (index == 0) {
                          context.vRouter.to(homePath);
                        } else if (index == 2) {
                          // todo context.vRouter.to(profilePath);
                        }
                      },
                      items: [
                        UNaviBarItem(
                          context,
                          icon: const Icon(Icons.home),
                          label: 'Home',
                        ),
                        UNaviBarItem(
                          context,
                          icon: const Icon(Icons.edit_outlined),
                          label: state.isEditing ? 'Edit Task' : 'New Task',
                        ),
                        UNaviBarItem(
                          context,
                          icon: const Icon(Icons.account_circle_rounded),
                          label: 'Profile',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16).copyWith(top: 4),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!state.isLoading) ...[
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.isEditing ? 'Edit Task' : 'New Task',
                                style: theme.textTheme.headline5,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    editTaskCubit.finishEditing();
                                  }
                                },
                                child:
                                    Text(state.isEditing ? 'Save' : 'Create'),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'New Task',
                          ),
                          initialValue: state.todo.title,
                          onChanged: (value) => editTaskCubit
                              .updateTodo(state.todo.copyWith(title: value)),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'title is required';
                            }
                            return null;
                          },
                          style: TextStyle(
                            fontSize: 20,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Notes ...',
                          ),
                          minLines: 4,
                          maxLines: 5,
                          onChanged: (value) => editTaskCubit
                              .updateTodo(state.todo.copyWith(note: value)),
                          initialValue: state.todo.note,
                          style: TextStyle(
                            fontSize: 20,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: state.todo.date ?? DateTime.now(),
                              firstDate: DateTime(DateTime.now().year - 1),
                              lastDate: DateTime(DateTime.now().year + 1),
                            ).then((date) {
                              if (date != null) {
                                editTaskCubit.setDate(date);
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 26,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: theme.cardColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: theme.colorScheme.primary,
                                ),
                                Text(
                                  dateFormat.format(
                                    state.todo.date ?? DateTime.now(),
                                  ),
                                  style: theme.textTheme.headline6!.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                                const SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ] else ...[
                        Shimmer.fromColors(
                          baseColor: theme.cardColor,
                          highlightColor: theme.dividerColor,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.isEditing ? 'Edit Task' : 'New Task',
                                  style: theme.textTheme.headline5,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const StadiumBorder(),
                                  ),
                                  onPressed: () {},
                                  child:
                                      Text(state.isEditing ? 'Save' : 'Create'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: theme.cardColor,
                          highlightColor: theme.dividerColor,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Shimmer.fromColors(
                          baseColor: theme.cardColor,
                          highlightColor: theme.dividerColor,
                          child: Container(
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Shimmer.fromColors(
                          baseColor: theme.cardColor,
                          highlightColor: theme.dividerColor,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
