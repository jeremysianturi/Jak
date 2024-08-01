import 'package:json_annotation/json_annotation.dart';

class ErrorData {
  final String id;
  final String message;

  const ErrorData({required this.id, required this.message});
}
