class ResponseDTO {
  String? userId;
  String? userName;
  String? designation;
  String? mobileNumber;
  String? memberType;
  String? firmName;
  String? dateOfBirth;
  String? dateOfAnniversary;
  String? language;
  String? address;
  String? option;
  final String captchaCode;
  final String otpCode;
  String? profileImage;

  ResponseDTO({
    this.userId,
    this.userName,
    this.designation,
    this.mobileNumber,
    this.memberType,
    this.firmName,
    this.dateOfBirth,
    this.dateOfAnniversary,
    this.language,
    this.address,
    this.option,
    required this.captchaCode,
    required this.otpCode,
    this.profileImage,
  });

  factory ResponseDTO.fromJson(Map<String, dynamic> json) {
    return ResponseDTO(
      captchaCode: json["CaptchaCode"],
      otpCode: json["OTPCode"],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "CaptchaCode": captchaCode,
      "OTPCode": otpCode,
    };
  }
  
}
