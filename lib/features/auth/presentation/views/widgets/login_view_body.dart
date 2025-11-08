import 'package:doc_doc_app/core/helpers/show_snack_bar.dart';
import 'package:doc_doc_app/features/auth/data/models/user.dart';
import 'package:doc_doc_app/features/auth/presentation/manager/cubits/auth/auth_cubit.dart';
import 'package:doc_doc_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_description_auth_title.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_end_widget.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_platform_images.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_remeber_me.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/title_text.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, HomeView.id);
          showSnackBar(context, "Success");
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is LoginLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 94),
                TitleText(text: 'Welcome Back'),
                SizedBox(height: 8),
                CustomDescriptionAuthTitle(
                  text:
                      "We're excited to have you back,can't wait to\n see what you've been up tosince you last\n logged in.",
                ),
                SizedBox(height: 36),
                CustomFormTextField(hintText: "Email", controller: email),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: password,
                ),
                SizedBox(height: 16),
                CustomRememberMe(),
                SizedBox(height: 32),
                CustomButton(
                  text: "Login",
                  onTap: () {
                    BlocProvider.of<AuthCubit>(
                      context,
                    ).signIn(User(email: email.text, password: password.text));
                  },
                ),
                SizedBox(height: 46),
                CustomDivider(),
                SizedBox(height: 32),
                CustomPlatformImages(),
                SizedBox(height: 32),
                CustomEndWidget(
                  text1: 'Don\'t have an account',
                  text2: 'Signup',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, SignUpView.id);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
