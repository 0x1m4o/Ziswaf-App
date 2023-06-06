import 'package:go_router/go_router.dart';
import 'package:ziswaf/pages/homepage.dart';
import 'package:ziswaf/pages/intro_slider.dart';
import 'package:ziswaf/pages/login.dart';
import 'package:ziswaf/pages/sign_up.dart';
import 'package:ziswaf/pages/slider_demo.dart';
import 'package:ziswaf/routes/pages_name.dart';

final router = GoRouter(initialLocation: PageName.intro, routes: [
  GoRoute(
    path: PageName.intro,
    builder: (context, state) => IntroSliderPage(),
  ),
  GoRoute(
    path: PageName.home,
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: PageName.slider,
    builder: (context, state) => OnboardingScreen(),
  ),
  GoRoute(
    path: PageName.login,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: PageName.signUp,
    builder: (context, state) => SignUpPage(),
  ),
]);
