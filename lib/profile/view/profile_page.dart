import 'package:flutter/material.dart';
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

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: const Center(
        child: Text('This is ProfilePage'),
      ),
    );
  }
}
