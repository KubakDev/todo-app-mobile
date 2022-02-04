import 'package:database_repository/database_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:humanizer/humanizer.dart';
import 'package:menu_button/menu_button.dart';
import 'package:todo_app/app/bloc/bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/home/home.dart';
import 'package:todo_app/shared/shared.dart';
import 'package:vrouter/vrouter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(context.read<TodoBloc>())
        ..add(const HomeEvent.requestStream())
        ..add(const HomeEvent.refresh()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();
    final auth = context.read<AuthBloc>();
    final authState = auth.state as AuthLoggedIn;
    final theme = Theme.of(context);
    final _drawer = context.read<AdvancedDrawerController>();

    // final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar(
        leadingChildren: [
          IconButton(
            onPressed: _drawer.showDrawer,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _drawer,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ],
        tailChildren: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => auth.add(const AuthLogout()),
          ),
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
        child: Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: UNaviBar(
              onTap: (p0) {
                if (p0 == 1) {
                  VRouter.of(context).to(profilePath);
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
        heroTag: 'bottomNavigationBar',
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
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return DeclarativeRefreshIndicator(
              refreshing: state.isLoading,
              displacement: 20,
              onRefresh: () async {
                homeBloc.add(const HomeEvent.refresh());
              },
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverAppBar(
                    // pinned: true,
                    snap: true,
                    floating: true,
                    expandedHeight: 250,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        color: theme.scaffoldBackgroundColor,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Text(
                                  'Hello, ${authState.user.name}',
                                  style: Theme.of(context).textTheme.headline4,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            DatePickerTimeline(
                              daysWithTodo: state.datesWithTodos,
                              onChanged: (DateTime selectedDate) {
                                homeBloc.add(
                                  HomeEvent.setSelectedDate(selectedDate),
                                );
                              },
                              selectedDate: state.selectedDate,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverStickyHeader(
                    header: Container(
                      color: theme.scaffoldBackgroundColor,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 250),
                            child: state.error != null
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red[50],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.all(16),
                                    margin: const EdgeInsets.only(
                                      right: 8,
                                      top: 8,
                                      left: 8,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.error_outline,
                                          color: Colors.red,
                                        ),
                                        const SizedBox(width: 8),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          child: Text(
                                            state.error!,
                                            maxLines: 5,
                                            overflow: TextOverflow.fade,
                                            style: const TextStyle(
                                              fontFamily: '',
                                              color: Colors.red,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8).copyWith(left: 16),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 310,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      getTime(state.selectedDate),
                                      style: theme.textTheme.headline5,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                MenuButton<TodoFilter>(
                                  items: const [
                                    TodoFilter.all,
                                    TodoFilter.active,
                                    TodoFilter.completed,
                                  ],
                                  itemBuilder: (TodoFilter value) => SizedBox(
                                    width: 50,
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 11,
                                      ),
                                      child: FilterIcon(
                                        filter: value,
                                      ),
                                    ),
                                  ),
                                  toggledChild: SizedBox(
                                    width: 50,
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 11,
                                      ),
                                      child: FilterIcon(
                                        filter: state.filter,
                                      ),
                                    ),
                                  ),
                                  onItemSelected: (TodoFilter value) {
                                    homeBloc.add(HomeEvent.changeFilter(value));
                                  },
                                  selectedItem: state.filter,
                                  child: SizedBox(
                                    width: 50,
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 11,
                                      ),
                                      child: FilterIcon(
                                        filter: state.filter,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, index) {
                          final todo = state.todos[index];
                          final _inDeleteQueue =
                              state.toBeDeletedTodos.contains(todo);
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            child: Dismissible(
                              confirmDismiss: (direction) async {
                                homeBloc.add(
                                  HomeEvent.deleteTodo(todo),
                                );
                                return false;
                              },
                              key: Key(todo.id!),
                              onDismissed: (_) {},
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                onTap: !_inDeleteQueue
                                    ? () {
                                        context.vRouter
                                            .to('$editTaskPath/${todo.id}');
                                      }
                                    : null,
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
                                            onChanged: !_inDeleteQueue
                                                ? (value) {
                                                    context
                                                        .read<TodoBloc>()
                                                        .add(
                                                          TodoUpdateEvent(
                                                            todo.copyWith(
                                                              isComplete: value,
                                                            ),
                                                          ),
                                                        );
                                                  }
                                                : null,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        todo.title ?? '',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          fontSize: 20,
                                          decoration: _inDeleteQueue ||
                                                  (todo.isComplete ?? false)
                                              ? TextDecoration.lineThrough
                                              : null,
                                        ),
                                      ),
                                      const Spacer(),
                                      if (_inDeleteQueue)
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: const StadiumBorder(),
                                          ),
                                          onPressed: () {
                                            homeBloc.add(
                                              HomeEvent.undoDeleteTodo(
                                                todo,
                                              ),
                                            );
                                          },
                                          child: const Text('UNDO'),
                                        ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: state.todos.length,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String getTime(DateTime date) {
    var now = DateTime.now();
    now = DateTime(now.year, now.month, now.day);
    final approximateTime = date.difference(now).toApproximateTime();
    final s = approximateTime == 'now' ? 'today' : approximateTime;
    return s == 'today' || s == 'tomorrow'
        ? "$s's tasks"
        : date.isAfter(now)
            ? 'tasks in $s'
            : 'tasks from $s';
  }
}
