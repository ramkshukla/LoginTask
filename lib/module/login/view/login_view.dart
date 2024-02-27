import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:net_carrot_task/module/login/controller/login_bloc.dart';
import 'package:net_carrot_task/module/login/controller/login_event.dart';
import 'package:net_carrot_task/module/login/controller/login_state.dart';

class NetCarrotsLoginView extends StatelessWidget {
  const NetCarrotsLoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: state.isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.blue.withOpacity(0.6),
                        ),
                      ),
                      onPressed: () {
                        context
                            .read<LoginBloc>()
                            .add(UserLoginEvent(context: context));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
