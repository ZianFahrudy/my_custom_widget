// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class DefaultEntity extends Equatable {
  final int statusCode;
  final String message;
  const DefaultEntity({
    required this.statusCode,
    required this.message,
  });
  @override
  List<Object> get props => [statusCode, message];
}
