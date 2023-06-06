import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ziswaf/routes/pages_name.dart';
import 'package:ziswaf/theme/colors.dart';
import 'package:ziswaf/theme/fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController isSecurePassC = TextEditingController();
  TextEditingController isSecureC = TextEditingController();
  bool isSecurePass = true;
  bool isSecurePassConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/ziswaf.png',
          width: 95.74,
          height: 25,
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
                  textAlign: TextAlign.start,
                  'Daftar',
                  style: pageTitleBold.copyWith(color: neutral100),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Isi form di bawah untuk mendaftarkan akun',
                    style: secondaryTextSemiBold.copyWith(color: neutral70),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.start,
                  'Nomor WhatsApp',
                  style: captionTextBold.copyWith(
                      fontWeight: semiBold, color: neutral90),
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
                  height: 15,
                ),
                Text(
                    textAlign: TextAlign.start,
                    'Kata Sandi',
                    style: captionTextSemiBold.copyWith(color: neutral90)),
                TextField(
                    controller: isSecureC,
                    obscureText: isSecurePass,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              isSecurePass = !isSecurePass;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral50)),
                        hintText: 'Masukan kata sandi',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral30)))),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Minimum 8 Karakter',
                    style: overlineSemiBold.copyWith(color: neutral70),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.start,
                  'Konfirmasi Kata Sandi',
                  style: captionTextSemiBold.copyWith(color: neutral90),
                ),
                TextField(
                    controller: isSecurePassC,
                    obscureText: isSecurePassConfirm,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              isSecurePassConfirm = !isSecurePassConfirm;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral50)),
                        hintText: 'Ketik ulang kata sandi',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: new BorderSide(color: neutral30)))),
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
                            textAlign: TextAlign.start,
                            'Daftar',
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
                          'Sudah memiliki akun?',
                          style: captionTextBold.copyWith(color: neutral60),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            GoRouter.of(context).go(PageName.login);
                          },
                          child: Text(
                            textAlign: TextAlign.start,
                            'Masuk sekarang',
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
