import 'package:auth_task/features/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_task/features/profile/presentation/views/widgets/custom_prof_textfield.dart';
import 'package:auth_task/features/profile/presentation/views/widgets/view_up_prof_section.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ViewUpProfSection(),
          SizedBox(height: 70,),
          Text(
            'Khaled Gamal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff2A2B2E),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          CustomProfTextField(
            headtext: 'Username',
            hinttext: 'Khaled Gamal',
          ),
          SizedBox(
            height: 22,
          ),
          CustomProfTextField(
            headtext: 'Email',
            hinttext: 'kghaly56@gmail.com',
          ),
          SizedBox(
            height: 22,
          ),
          CustomProfTextField(
            headtext: 'Gender',
            hinttext: 'Male',
          ),
          SizedBox(
            height: 22,
          ),
          CustomButton(
            title: 'Log out',
            color: Color(0xffDC3545),
          ),
        ],
      ),
    );
  }
}