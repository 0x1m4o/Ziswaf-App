// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';

import 'package:ziswaf/cubits/indicator/indicator_cubit.dart';
import 'package:ziswaf/routes/pages_name.dart';

class IntroSliderPage extends StatefulWidget {
  IntroSliderPage({
    Key? key,
  }) : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<IntroSliderPageIndex> listIntroSliderPageIndex = [];

  // List<Widget> generateListCustomTabs() {
  //   return List.generate(3, (index) {
  //     print("index $index");
  //     if (index == 0) {
  //       context.read<IndicatorCubit>().changeSlide(index);
  //       return IntroSliderPageIndex(
  //         title: 'Pendataan Muzakki yang mudah',
  //         image: 'assets/images/IllustrasiSplashScreen1.png',
  //         description:
  //             'Data setiap muzakki yang ingin membayar zakat hanya melalui handphone',
  //       );
  //     } else if (index == 1) {
  //       context.read<IndicatorCubit>().changeSlide(index);
  //       return IntroSliderPageIndex(
  //         title: 'Buat Program dari hasil donasi',
  //         image: 'assets/images/IllustrasiSplashScreen2.png',
  //         description: 'Rencanakan program untuk mengelola hasil donasi',
  //       );
  //     } else {
  //       context.read<IndicatorCubit>().changeSlide(index);
  //       return IntroSliderPageIndex(
  //         title: 'Monitor target pencapaian progam',
  //         image: 'assets/images/IllustrasiSplashScreen3.png',
  //         description:
  //             'Pastikan dana terkumpul sesuai dengan target pencapaian program yang telah dibuat',
  //       );
  //     }
  //   });
  // }

  @override
  void initState() {
    listIntroSliderPageIndex.add(IntroSliderPageIndex(
      title: 'Pendataan Muzakki yang mudah',
      image: 'assets/images/IllustrasiSplashScreen1.png',
      description:
          'Data setiap muzakki yang ingin membayar zakat hanya melalui handphone',
    ));

    listIntroSliderPageIndex.add(IntroSliderPageIndex(
      title: 'Buat Program dari hasil donasi',
      image: 'assets/images/IllustrasiSplashScreen2.png',
      description: 'Rencanakan program untuk mengelola hasil donasi',
    ));
    listIntroSliderPageIndex.add(IntroSliderPageIndex(
      title: 'Monitor target pencapaian progam',
      image: 'assets/images/IllustrasiSplashScreen3.png',
      description:
          'Pastikan dana terkumpul sesuai dengan target pencapaian program yang telah dibuat',
    ));
    super.initState();
  }

  void onDonePress() {
    log("End of slides");
  }

  Widget build(BuildContext context) {
    print(context.read<IndicatorCubit>().state.currentIndex);
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: IntroSlider(
              key: UniqueKey(),
              listCustomTabs: listIntroSliderPageIndex,
              onDonePress: onDonePress,
              isShowDoneBtn: false,
              isShowPrevBtn: false,
              isShowSkipBtn: false,
              isShowNextBtn: false,
              indicatorConfig: IndicatorConfig(
                sizeIndicator: 13,
                indicatorWidget: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
                activeIndicatorWidget: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  height: 10,
                  width: 18.0,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 1, 172, 103),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
              ),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: MediaQuery.of(context).size.height * 0.03),
            color: Color.fromARGB(255, 229, 229, 229),
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(PageName.login);
              },
              child: Text('Selanjutnya'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 1, 172, 103)),
            )),
      ],
    );
  }
}

class IntroSliderPageIndex extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const IntroSliderPageIndex({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 229, 229, 229),
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          Image.asset(
            "$image",
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Text(
              description,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 101, 107, 117),
                fontFamily: 'RobotoMono',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
