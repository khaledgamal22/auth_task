import 'package:auth_task/features/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_task/features/profile/data/user.dart';
import 'package:auth_task/features/profile/presentation/views/widgets/custom_prof_textfield.dart';
import 'package:auth_task/features/profile/presentation/views/widgets/view_up_prof_section.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ViewUpProfSection(image: user.image!,),
          SizedBox(
            height: 70,
          ),
          Text(
            user.username!,
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
            hinttext: user.username!,
          ),
          SizedBox(
            height: 22,
          ),
          CustomProfTextField(
            headtext: 'Email',
            hinttext: user.email!,
          ),
          SizedBox(
            height: 22,
          ),
          CustomProfTextField(
            headtext: 'Gender',
            hinttext: user.gender!,
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
