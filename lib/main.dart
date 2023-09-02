import 'package:auth_task/core/widgets/app_routes.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const AuthTask());
}
class AuthTask extends StatelessWidget {
  const AuthTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}