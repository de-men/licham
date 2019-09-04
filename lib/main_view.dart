import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licham/main_bloc.dart';
import 'package:licham/main_state.dart';

class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainState();
}

class _MainState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final mainBloc = BlocProvider.of<MainBloc>(context);

    return BlocListener<MainBloc, MainState>(
      listener: (context, state) {
        if (state is MainFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('${state.error}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Title'),
            ),
            body: Text('Body'),
          );
        },
      ),
    );
  }
}