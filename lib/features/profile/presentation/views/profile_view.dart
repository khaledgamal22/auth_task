import 'package:auth_task/features/profile/data/user.dart';
import 'package:auth_task/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileViewBody(user: user,),
    );
  }
}
