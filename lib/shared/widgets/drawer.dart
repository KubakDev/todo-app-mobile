import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/shared/shared.dart';
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
    return AdvancedDrawer(
      backdropColor: kPrimaryColor5,
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
                child: Image.network(
                  authState.user.pictureUrl,
                ),
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
                // ignore: unnecessary_lambdas
                onTap: () {
                  // todo context.vRouter.to(profilePath);
                  _advancedDrawerController.hideDrawer();
                },
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                // ignore: unnecessary_lambdas
                onTap: () {
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
