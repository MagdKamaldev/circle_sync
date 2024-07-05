import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController();
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
                verticalSpace(40),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                  ),
                ),
                verticalSpace(40),
                const Text(
                  "Sign In",
                  style: TextStyles.heading2,
                ),
                verticalSpace(40),
                AppTextField(
                    isPassword: false,
                    controller: mailController,
                    hintText: "Enter your gmail address",
                    keyboardType: TextInputType.emailAddress),
                verticalSpace(35),
                AppTextField(
                    isPassword: true,
                    controller: passwordController,
                    hintText: "Enter your password",
                    keyboardType: TextInputType.visiblePassword),
                verticalSpace(size.height * 0.1),
                AppButton(onPressed: () {}, text: "Sign Up"),
                verticalSpace(30),
                const Text(
                  "Don't have an account?",
                  style: TextStyles.body,
                ),
                verticalSpace(10),
                TextButton(
                  child: Text("Sign Up",
                      style: TextStyles.body.copyWith(
                        color: ColorManager.primary,
                      )),
                  onPressed: () {
                    context.pushNamed(Routes.signUp);
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
