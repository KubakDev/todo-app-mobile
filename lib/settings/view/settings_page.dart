import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/bloc/bloc.dart';
import 'package:todo_app/shared/shared.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthBloc>();
    final settings = context.read<SettingsCubit>();
    final authState = auth.state as AuthLoggedIn;
    final _drawer = context.read<AdvancedDrawerController>();

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
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return ListView(
            children: [
              ListTile(
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: state.theme == ThemeMode.dark,
                  onChanged: (value) => settings.changeTheme(
                    value ? ThemeMode.dark : ThemeMode.light,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
