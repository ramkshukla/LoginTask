import 'package:net_carrot_task/module/login/model/login_dto.dart';

class LoginState {
  final bool isLoading;
  final LoginDTO loginDTO;

  factory LoginState.initial() => LoginState(
        isLoading: false,
        loginDTO: LoginDTO(
          result: "",
          responseDTO: [],
        ),
      );

  LoginState({
    required this.isLoading,
    required this.loginDTO,
  });

  LoginState copyWith({
    bool? isLoading,
    LoginDTO? loginDTO,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      loginDTO: loginDTO ?? this.loginDTO,
    );
  }
}
