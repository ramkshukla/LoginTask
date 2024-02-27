import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:net_carrot_task/module/home/home_view.dart';
import 'package:net_carrot_task/module/login/controller/login_event.dart';
import 'package:net_carrot_task/module/login/controller/login_state.dart';
import 'package:net_carrot_task/module/login/model/login_dto.dart';
import 'package:net_carrot_task/module/login/repo/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<UserLoginEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final LoginDTO loginDTO = await LoginRepoImpl().loginUser();
        emit(
          state.copyWith(
            isLoading: false,
            loginDTO: loginDTO,
          ),
        );
        if (!state.isLoading) {
          // ignore: use_build_context_synchronously
          Navigator.push(
            event.context,
            MaterialPageRoute(
              builder: (context) => HomeView(
                result: state.loginDTO.result,
                captchaCode: state.loginDTO.responseDTO[0].captchaCode,
                otp: state.loginDTO.responseDTO[0].otpCode,
              ),
            ),
          );
        }
      },
    );
  }
}
