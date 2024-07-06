import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/core/widgets/logo.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                const Text(
                  "Sign Up",
                  style: TextStyles.heading2,
                ),
                verticalSpace(30),
                AppTextField(
                  isPassword: false,
                  controller: firstNameController,
                  hintText: "First Name",
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(20),
                AppTextField(
                  isPassword: false,
                  controller: lastNameController,
                  hintText: "Last Name",
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(20),
                AppTextField(
                  isPassword: false,
                  controller: emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                verticalSpace(20),
                AppTextField(
                  isPassword: true,
                  controller: passwordController,
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                ),
                verticalSpace(size.height * 0.1),
                AppButton(onPressed: () {}, text: "Sign Up"),
                verticalSpace(20),
                const Text(
                  "Already have an account?",
                  style: TextStyles.body,
                ),
                verticalSpace(10),
                TextButton(
                  child: Text(
                    "Sign In",
                    style: TextStyles.body.copyWith(
                      color: ColorManager.primary,
                    ),
                  ),
                  onPressed: () {
                    context.pushNamed(Routes.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
