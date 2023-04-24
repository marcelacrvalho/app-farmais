import '../../../../core/entities/error_entity.dart';

class ErrorModel extends ErrorEntity {
  String code;
  String message;

  ErrorModel({required this.code, required this.message})
      : super(
          code: code,
          message: message,
        );

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json["code"],
      message: json["message"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "message": message,
    };
  }
}
