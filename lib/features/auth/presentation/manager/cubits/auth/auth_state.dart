part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthIntial extends AuthState {}

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {}

final class RegisterFailure extends AuthState {
  final String errorMessage;
  RegisterFailure({required this.errorMessage});
}
final class LoginSuccess extends AuthState {}
final class LoginLoading extends AuthState {}
final class LoginFailure extends AuthState {
  final String errorMessage;
  LoginFailure({required this.errorMessage});
}