import 'package:dio/dio.dart';
import 'package:net_carrot_task/_utils/api_endspoint.dart';
import 'package:net_carrot_task/module/login/model/login_dto.dart';

abstract class LoginRepo {
  Future<LoginDTO> loginUser();
}

class LoginRepoImpl implements LoginRepo {
  @override
  Future<LoginDTO> loginUser() async {
    final dio = Dio();

    try {
      final Response loginData = await dio.post(
        ApiEndPoints.login,
        data: {
          "MobileNo": "9900000000",
          "DeviceId": "Device001",
          "OSType": "iOS",
          "CaptchaCode": "",
          "OTP": "",
          "IsLoginFirst": "",
          "FCMToken": ""
        },
      );
      final loginDTO = loginData.data["UserLoginAPI"] as Map<String, dynamic>;
      return LoginDTO.fromJson(loginDTO);
    } catch (e) {
      return LoginDTO(
        result: "",
        responseDTO: [],
      );
    }
  }
}
