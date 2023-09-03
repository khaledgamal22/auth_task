import 'package:auth_task/features/auth_feature/presentation/views/login_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth_feature/presentation/views/register_view.dart';

abstract class AppRoutes {

static const kLogin='/';
static const kRegister='/Register';
static final routes=GoRouter(routes: [
    GoRoute(
      path: kLogin,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kRegister,
      builder: (context, state) => const RegisterView(),
    ),
  ]);
}