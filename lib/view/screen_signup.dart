import 'package:flutter/material.dart';
import '../util/constance/text_style.dart';
import '../util/validation/form_validation.dart';
import '../widget/comman/buttom_widget.dart';
import '../widget/comman/divider_widget.dart';
import '../widget/comman/text_feild_widget.dart';
import 'screen_login.dart';

// ignore: must_be_immutable
class ScreenSignUp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conPasswordController = TextEditingController();
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  bool loadingCheck = false;
  ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: signUpFormKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/image/Frame 2 (1).png'))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sign Up',
                    style: AppText.largeDark,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create a new account',
                    style: AppText.smallLight,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldWidget(
                    controller: userNameController,
                    hintText: 'Username',
                    icon: Icons.person_outline_sharp,
                    validator: (value) => Validations.emtyValidation(value),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldWidget(
                    controller: emailController,
                    hintText: 'Email',
                    icon: Icons.mail_outline_rounded,
                    validator: (value) => Validations.emailValidation(value),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldWidget(
                    isObscure: true,
                    textVisibility: true,
                    controller: passwordController,
                    hintText: 'Password',
                    icon: Icons.lock_open_rounded,
                    validator: (value) => Validations.emtyValidation(value),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldWidget(
                    isObscure: true,
                    textVisibility: true,
                    controller: conPasswordController,
                    hintText: 'Confirm Password',
                    icon: Icons.lock_open_rounded,
                    validator: (value) => Validations.conformPasswordValidation(
                        value, passwordController.text),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ButtonWidget(
                    colorCheck: true,
                    onpressFunction: () => signUpFnc(
                        context,
                        emailController.text,
                        userNameController.text,
                        passwordController.text),
                    text: 'Sing Up',
                    borderCheck: false,
                    loadingCheck: loadingCheck,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DividerWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    loadingCheck: false,
                    colorCheck: false,
                    onpressFunction: () => Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(
                            builder: (context) => ScreenLogIn())),
                    text: 'Sing in',
                    borderCheck: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  signUpFnc(
      BuildContext context, String mail, String name, String password) async {
    if (signUpFormKey.currentState!.validate()) {}
  }
}
