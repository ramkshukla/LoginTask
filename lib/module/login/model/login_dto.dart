import 'package:net_carrot_task/module/login/model/response_dto.dart';

class LoginDTO {
  final String result;
  final List<ResponseDTO> responseDTO;

  LoginDTO({
    required this.result,
    required this.responseDTO,
  });

  factory LoginDTO.fromJson(Map<String, dynamic> json) {
    return LoginDTO(
      result: json["Result"],
      responseDTO: List.from(
        (json["Response"] as List<dynamic>)
            .map(
              (e) => ResponseDTO.fromJson(e),
            )
            .toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "Result": result,
      "Response": responseDTO.map((e) => e.toJson()).toList()
    };
  }
}
