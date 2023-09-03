import 'package:auth_task/features/auth_feature/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height*0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.75),
              image: const DecorationImage(
                image: AssetImage('assets/images/Rectangle 1135.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
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
          SizedBox(height: 22,),
          CustomTextField(
            headtext: 'Username',
            hinttext: 'Enter your username',
            icon: Icons.cancel_outlined,
          ),
          SizedBox(height: 22,),
          CustomTextField(
            headtext: 'Password',
            hinttext: 'Enter your password',
            icon: Icons.visibility_off,
          ),
        ],
      ),
    );
  }
}
