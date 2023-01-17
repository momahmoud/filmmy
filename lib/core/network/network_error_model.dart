import 'package:equatable/equatable.dart';

class NetworkErrorModel extends Equatable {
  final String statusMessage;
  final int statusCode;
  final bool success;

  const NetworkErrorModel({
    required this.statusMessage,
    required this.statusCode,
    required this.success,
  });

  @override
  List<Object> get props => [
        statusCode,
        statusMessage,
        success,
      ];

  factory NetworkErrorModel.fromJson(Map<String, dynamic> json) {
    return NetworkErrorModel(
      statusMessage: json['status_message'],
      statusCode: json['status_code'],
      success: json['success'],
    );
  }
}
