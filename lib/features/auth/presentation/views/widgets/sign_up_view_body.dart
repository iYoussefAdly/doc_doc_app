import 'package:doc_doc_app/core/helpers/show_snack_bar.dart';
import 'package:doc_doc_app/features/auth/data/models/user.dart';
import 'package:doc_doc_app/features/auth/presentation/manager/cubits/auth/auth_cubit.dart';
import 'package:doc_doc_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_description_auth_title.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_divider.dart'
    show CustomDivider;
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_end_widget.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_platform_images.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/custom_remeber_me.dart';
import 'package:doc_doc_app/features/auth/presentation/views/widgets/title_text.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final TextEditingController nameContorller = TextEditingController();
  final TextEditingController emailContorller = TextEditingController();
  final TextEditingController genderContorller = TextEditingController();
  final TextEditingController passwordContorller = TextEditingController();
  final TextEditingController confirmPasswordContorller =
      TextEditingController();
  final TextEditingController phoneContorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Navigator.pushReplacementNamed(context, HomeView.id);
          showSnackBar(context, "success");
        } else if (state is RegisterFailure) {
          showSnackBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is RegisterLoading) {
          return  Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 94),
                TitleText(text: 'Create Account'),
                SizedBox(height: 8),
                CustomDescriptionAuthTitle(
                  text:
                      "Sign up now and start exploring all that our\n app has to offer. We're excited to welcome\n you to our community!",
                ),
                SizedBox(height: 36),
                CustomFormTextField(
                  hintText: "Name",
                  controller: nameContorller,
                ),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Email",
                  controller: emailContorller,
                ),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Phone",
                  controller: phoneContorller,
                ),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Gender",
                  controller: genderContorller,
                ),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordContorller,
                ),
                SizedBox(height: 16),
                CustomFormTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirmPasswordContorller,
                ),
                SizedBox(height: 16),
                CustomRememberMe(),
                SizedBox(height: 32),
                CustomButton(
                  text: "Create Account",
                  onTap: () {
                    final user = User(
                      email: emailContorller.text,
                      gender: genderContorller.text,
                      name: nameContorller.text,
                      password: passwordContorller.text,
                      confirmPassword: confirmPasswordContorller.text,
                      phone: phoneContorller.text,
                    );
                    context.read<AuthCubit>().register(user);
                  },
                ),
                const SizedBox(height: 46),
                const CustomDivider(),
                const SizedBox(height: 32),
                const CustomPlatformImages(),
                const SizedBox(height: 32),
                CustomEndWidget(
                  text1: 'Already have an Account',
                  text2: 'Login',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, LoginView.id);
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
