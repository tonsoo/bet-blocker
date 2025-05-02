import 'package:bet_blocker/screens/login/login_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: LoginScreen.path,
  routes: [
    GoRoute(
      path: LoginScreen.path,
      builder: (context, state) => LoginScreen(key: state.pageKey),
    ),
  ],
);
