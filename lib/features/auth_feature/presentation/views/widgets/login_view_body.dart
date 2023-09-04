import 'package:auth_task/core/widgets/app_routes.dart';
import 'package:auth_task/features/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_task/features/auth_feature/presentation/views/widgets/custom_text_field.dart';
import 'package:auth_task/features/auth_feature/presentation/views/widgets/view_up_auth_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ViewUpSection(),
              SizedBox(height: 70,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Log in to your account',
                  style: TextStyle(
                    color: Color(0xff2A2B2E),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              CustomTextField(
                headtext: 'Username',
                hinttext: 'Enter your username',
                icon: Icons.cancel_outlined,
              ),
              SizedBox(
                height: 22,
              ),
              CustomTextField(
                headtext: 'Password',
                hinttext: 'Enter your password',
                icon: Icons.visibility_off_outlined,
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    side: BorderSide(color: Color(0xff808194), width: 2),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color(0xff2A2B2E),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.kProfile);
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xff2A2B2E),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 4,
                        decorationColor: Color(0xff4F90F0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              CustomButton(
                title: 'Login',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xff2A2B2E),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRoutes.kRegister);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xff2A2B2E),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 4,
                          decorationColor: Color(0xff4F90F0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
