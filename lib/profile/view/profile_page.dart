import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/bloc/bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/shared/shared.dart';
import 'package:vrouter/vrouter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    context.read<TodoBloc>().add(const TodoEvent.getCheckedTodos());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authState = context.read<AuthBloc>().state as AuthLoggedIn;
    final todoBloc = context.read<TodoBloc>();
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: UNaviBar(
              selectedIndex: 1,
              onTap: (p0) {
                if (p0 == 0) {
                  VRouter.of(context).to(homePath);
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
                  icon: const Icon(Icons.account_circle_rounded),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          VRouter.of(context).to(editTaskPath);
          // todoBloc.add(
          //   TodoAddEvent(
          //     Todo(
          //       date: DateTime.now(),
          //       title: 'New Todo ${DateTime.now().millisecondsSinceEpoch}',
          //       note: 'How you doing?',
          //       isComplete: false,
          //     ),
          //   ),
          // );
        },
        child: const Icon(Icons.edit_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16).copyWith(bottom: 0),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: theme.cardColor,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(authState.user.pictureUrl),
                      radius: 50,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      authState.user.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: theme.cardColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Personal Information',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      authState.user.email,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BlocConsumer<TodoBloc, TodoState>(
                listener: (context, state) {
                  if (state is TodoError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: theme.cardColor,
                    ),
                    child: Column(
                      children: [
                        if (state is TodoLoading)
                          const Center(child: CircularProgressIndicator()),
                        if (state is! TodoLoading)
                          Row(
                            children: [
                              Text(
                                'Previous Tasks',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  todoBloc
                                      .add(const TodoEvent.deleteCompleted());
                                },
                                icon: const Icon(Icons.delete_outline),
                              ),
                            ],
                          ),
                        if (state is! TodoLoading)
                          ...List.generate(
                            state.todos.length,
                            (index) {
                              final todo = state.todos[index];
                              return InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.cardColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  child: Row(
                                    children: [
                                      Transform.translate(
                                        offset: const Offset(6, 0),
                                        child: Transform.scale(
                                          scale: 1.6,
                                          child: Checkbox(
                                            shape: const CircleBorder(),
                                            value: todo.isComplete,
                                            onChanged: (_) {},
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        todo.title ?? '',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      const Spacer(),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            )
          ],
        ),
      ),
    );
  }
}
