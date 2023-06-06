import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ziswaf/cubits/indicator/indicator_cubit.dart';
import './routes/app_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => IndicatorCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.latoTextTheme(ThemeData().textTheme)),
      ),
    );
  }
}
