import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Home'),
          // a button when pressed add logout event to authbloc
          ElevatedButton(
            child: const Text('Logout'),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthLogout());
            },
          ),
        ],
      ),
    );
  }
}
