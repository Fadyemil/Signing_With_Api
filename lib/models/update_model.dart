import 'package:sin_api/core/Api/end_point.dart';

class UpdateModel {
  final String message;

  UpdateModel({required this.message});

  factory UpdateModel.fromJson(Map<String, dynamic> json) {
    return UpdateModel(
      message: json[ApiKey.message],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}