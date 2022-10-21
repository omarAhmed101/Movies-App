import 'package:movies_app/core/error/error_message_model.dart';

class ErrorException implements Exception{
  final ErrorMessageModel errorMessageModel;
  ErrorException({required this.errorMessageModel});
}