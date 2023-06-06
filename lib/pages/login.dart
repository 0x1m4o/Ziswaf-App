import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ziswaf/routes/pages_name.dart';
import 'package:ziswaf/theme/colors.dart';
import 'package:ziswaf/theme/fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/ziswaf.png',
          height: 25,
          width: 95.74,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              children: [
                Text(
                  'Masuk',
                  style: textLSemibold,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Masuk dengan akun yang terdaftar.',
                    style: textMBold.copyWith(color: neutral50),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Nomor WhatsApp',
                  style: textSBlack.copyWith(color: neutral60),
                ),
                TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral50)),
                        hintText: 'Masukan Nomor WhatsApp',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral30)))),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Kata Sandi',
                  style: textSBlack.copyWith(color: neutral60),
                ),
                TextField(
                    obscureText: isSecure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral50)),
                        hintText: 'Masukan kata sandi',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral30)))),
                InkWell(
                  onTap: () {
                    GoRouter.of(context)
                        .go('${PageName.login}/${PageName.forgotPassword}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Lupa kata sandi?',
                      style: textSBlack.copyWith(color: secondaryMain),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: BottomAppBar(
            elevation: 0,
            child: Container(
              color: Colors.transparent,
              height: 115,
              width: double.maxFinite,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Masuk',
                            style: textMBold,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryMain),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          'Belum memiliki akun?',
                          style: captionTextBold.copyWith(color: neutral60),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            GoRouter.of(context).go(PageName.signUp);
                          },
                          child: Text(
                            textAlign: TextAlign.start,
                            'Daftar Sekarang',
                            style: captionTextBold.copyWith(color: primaryMain),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
