import 'package:database_repository/database_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/app/bloc/todo_bloc.dart';
import 'package:todo_app/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  late final AdvancedDrawerController _advancedDrawerController;

  @override
  void initState() {
    _advancedDrawerController = AdvancedDrawerController();
    context.read<TodoBloc>().add(
          TodoGetEvent(
            DateTime.now().add(const Duration(days: -50)),
            DateTime.now().add(const Duration(days: 50)),
          ),
        );

    super.initState();
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final todoBloc = context.read<TodoBloc>();
// ! get the todo from home bloc not directly from todo bloc
    final auth = context.read<AuthBloc>();
    final authState = auth.state as AuthLoggedIn;
    final theme = Theme.of(context);
    // final size = MediaQuery.of(context).size;
    return AdvancedDrawer(
      backdropColor: kPrimaryColor5,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.black,
          iconColor: Colors.black,
          child: Column(
            children: [
              Container(
                width: 128,
                height: 128,
                margin: const EdgeInsets.only(
                  top: 24,
                  bottom: 64,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: const Placeholder(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.favorite),
                title: const Text('Favourites'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: const Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: TopBar(
          leadingChildren: [
            IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
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
        // bottomNavigationBar with 3 buttons (Home, Profile, Favourites)
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            todoBloc.add(
              TodoGetEvent(
                DateTime.now().add(const Duration(days: -50)),
                DateTime.now().add(const Duration(days: 50)),
              ),
            );
          },
          child: const Icon(Icons.edit_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Hello, ${authState.user.name}',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const DatePickerTimeline(),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "today's tasks",
                    style: theme.textTheme.headline5,
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<TodoBloc, TodoState>(
                  builder: (context, state) {
                    if (state is TodoLoaded) {
                      return ListView.builder(
                        itemCount: state.todos.length,
                        itemBuilder: (_, index) {
                          final todo = state.todos[index];
                          return CheckboxListTile(
                            value: todo.isComplete,
                            title: Text(todo.title ?? ''),
                            onChanged: (value) {
                              context.read<TodoBloc>().add(
                                    TodoUpdateEvent(
                                      todo.copyWith(
                                        isComplete: value,
                                      ),
                                      index,
                                    ),
                                  );
                            },
                          );
                        },
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DatePickerTimeline extends StatefulWidget {
  const DatePickerTimeline({
    Key? key,
  }) : super(key: key);

  @override
  State<DatePickerTimeline> createState() => _DatePickerTimelineState();
}

class _DatePickerTimelineState extends State<DatePickerTimeline> {
  DateTime _selectedValue = DateTime.now();
  late int _selectedIndex;
  late int _todaysIndex;
  int days = 500;
  late AutoScrollController _scrollController;
  final DateFormat dayName = DateFormat('EEE');
  late DateTime _beginDate;
  late DateTime _today;
  @override
  void initState() {
    _today = DateTime.now();
    const i = 20;
    _beginDate = _today.add(const Duration(days: -i));
    _scrollController = AutoScrollController(
      initialScrollOffset: 1700,
    );
    _selectedIndex = selectedToIndex();
    _todaysIndex = i;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _scrollController.scrollToIndex(
        i - 1,
        preferPosition: AutoScrollPosition.begin,
        duration: const Duration(milliseconds: 500),
      );
    });
    super.initState();
  }

  int selectedToIndex() {
    return _selectedValue.difference(_beginDate).inDays + 1;
  }

  String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: kPrimaryColor5,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 200,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              formatDate(_selectedValue),
              style: theme.textTheme.headline5,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: days,
                padding: const EdgeInsets.only(right: 8),
                controller: _scrollController,
                itemBuilder: (_, i) {
                  final add = _beginDate.add(Duration(days: i));
                  return AutoScrollTag(
                    key: ValueKey(i),
                    controller: _scrollController,
                    index: i,
                    highlightColor: Colors.black.withOpacity(0.1),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedValue = add;
                          _selectedIndex = i;
                        });
                      },
                      child: AnimatedContainer(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(
                          left: 8,
                          top: 8,
                          bottom: 8,
                        ),
                        decoration: BoxDecoration(
                          color: _selectedIndex == i
                              ? kPrimaryColor
                              : kPrimaryColor4,
                          borderRadius: BorderRadius.circular(40),
                          border: _selectedIndex != i
                              ? Border.all(
                                  color: _todaysIndex == i
                                      ? kPrimaryColor2
                                      : kPrimaryColor4,
                                  width: 2,
                                )
                              : null,
                        ),
                        width: size.width / 4.7,
                        duration: const Duration(milliseconds: 200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${add.day}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: _selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            Text(
                              dayName.format(add),
                              style: TextStyle(
                                fontSize: 16,
                                color: _selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
