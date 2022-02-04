import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app/bloc/bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:vrouter/vrouter.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late final AdvancedDrawerController _advancedDrawerController;

  @override
  void initState() {
    _advancedDrawerController = AdvancedDrawerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthBloc>();
    final authState = auth.state as AuthLoggedIn;
    final theme = Theme.of(context);
    return AdvancedDrawer(
      backdropColor: theme.dividerColor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.black,
          iconColor: Colors.black,
          child: Column(
            children: [
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(authState.user.pictureUrl),
              ),
              ListTile(
                onTap: () {
                  context.vRouter.to(homePath);
                  _advancedDrawerController.hideDrawer();
                },
                leading: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                onTap: () {
                  context.vRouter.to(profilePath);
                  _advancedDrawerController.hideDrawer();
                },
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                onTap: () {
                  context.vRouter.to(settingsPath);

                  _advancedDrawerController.hideDrawer();
                },
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
      child: ListenableProvider.value(
        value: _advancedDrawerController,
        child: widget.child,
      ),
    );
  }
}
