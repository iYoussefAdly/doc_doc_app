import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/api_constants.dart';
import 'package:doc_doc_app/features/auth/data/models/user.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.dio) : super(AuthIntial());
  final Dio dio;
  Future<void> register(User user) async {
    emit(RegisterLoading());
    try {
      final response = await dio.post(
        ApiConstants.registerUrl,
        data: user.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(RegisterSuccess());
      } else {
        emit(
          RegisterFailure(
            errorMessage: response.statusMessage ?? 'Unknown error',
          ),
        );
      }
    } on DioException catch (e) {
      print('Dio Error Response: ${e.response?.data}');
      final errorMsg =
          e.response?.data['message'] ??
          e.message ??
          'Something went wrong. Please try again.';
      emit(RegisterFailure(errorMessage: errorMsg));
    } catch (e) {
      emit(RegisterFailure(errorMessage: e.toString()));
    }
  }

  Future<void> signIn(User user) async {
    emit(LoginLoading());
    try {
      final response = await dio.post(
        ApiConstants.loginurl,
        data: user.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(LoginSuccess());
        saveUser();
      } else {
        emit(
          LoginFailure(errorMessage: response.statusMessage ?? 'Unknown error'),
        );
      }
    } on DioException catch (e) {
      print('Dio Error Response: ${e.response?.data}');
      final errorMsg =
          e.response?.data['message'] ??
          e.message ??
          'Something went wrong. Please try again.';
      emit(LoginFailure(errorMessage: errorMsg));
    } catch (e) {
      emit(LoginFailure(errorMessage: e.toString()));
    }
  }

  Future<void> saveUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLoggedIn", true);
  }
}
