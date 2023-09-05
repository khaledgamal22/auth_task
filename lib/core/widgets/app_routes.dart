import 'package:auth_task/features/auth_feature/presentation/views/login_view.dart';
import 'package:auth_task/features/profile/data/user.dart';
import 'package:auth_task/features/profile/presentation/views/profile_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth_feature/presentation/views/register_view.dart';

abstract class AppRoutes {
  static const kLogin = '/';
  static const kRegister = '/Register';
  static const kProfile = '/profile';
  static final routes = GoRouter(routes: [
    GoRoute(
      path: kLogin,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kRegister,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: kProfile,
      builder: (context, state) =>  ProfileView(user: state.extra as User,),
    ),
  ]);
}
