import 'package:dio/dio.dart';
import 'package:doc_doc_app/features/auth/presentation/manager/cubits/auth/auth_cubit.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = "SignUpView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(Dio()),
      child: Scaffold(body: SignUpViewBody()),
    );
  }
}
