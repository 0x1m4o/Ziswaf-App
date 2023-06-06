import 'package:go_router/go_router.dart';
import 'package:ziswaf/routes/pages_name.dart';
import '../pages/forgot_password.dart';
import '../pages/homepage.dart';
import '../pages/intro_slider.dart';
import '../pages/login.dart';
import '../pages/sign_up.dart';
import '../pages/slider_demo.dart';
import '../pages/reset_password.dart';

final router = GoRouter(initialLocation: PageName.intro, routes: [
  GoRoute(
    path: PageName.intro,
    builder: (context, state) => IntroSliderPage(),
  ),
  GoRoute(
    path: PageName.home,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: PageName.slider,
    builder: (context, state) => const OnboardingScreen(),
  ),
  GoRoute(
      path: PageName.login,
      builder: (context, state) => LoginPage(),
      routes: [
        GoRoute(
            path: PageName.forgotPassword,
            builder: (context, state) => const ForgotPassword(),
            routes: [
              GoRoute(
                path: PageName.resetPassword,
                builder: (context, state) => ResetPasswordPage(),
              )
            ])
      ]),
  GoRoute(
    path: PageName.signUp,
    builder: (context, state) => SignUpPage(),
  ),
]);
