class ErrorMessageModel {
  final String message;
  final bool success;
  final int statusCode;

  ErrorMessageModel({
    required this.message,
    required this.success,
    required this.statusCode,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic>json)
  {
    return ErrorMessageModel(
     message:json['status_message'],
      success:json['success'],
      statusCode:json['status_code'],);
  }
}
