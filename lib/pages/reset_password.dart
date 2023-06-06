import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ziswaf/routes/pages_name.dart';
import 'package:ziswaf/theme/colors.dart';
import 'package:ziswaf/theme/fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool isSecure = true;
  bool isSecureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: Colors.black,
            ),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
        title: Text(
          'Atur Ulang Kata Sandi',
          style: textMBold.copyWith(color: neutral90),
        ),
        centerTitle: true,
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
                  'Kata Sandi Baru',
                  style: textSBlack.copyWith(color: neutral60),
                ),
                TextField(
                    obscureText: isSecure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: Colors.grey,
                          icon: Icon(isSecure
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined),
                          onPressed: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: neutral50)),
                        hintText: 'Masukan kata sandi baru',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: neutral30)))),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Minimum 8 Karakter',
                    style: overlineSemiBold.copyWith(color: neutral70),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Konfirmasi Kata Sandi Baru',
                  style: textSBlack.copyWith(color: neutral60),
                ),
                TextField(
                    obscureText: isSecureConfirm,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: Colors.grey,
                          icon: Icon(isSecureConfirm
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined),
                          onPressed: () {
                            setState(() {
                              isSecureConfirm = !isSecureConfirm;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: neutral50)),
                        hintText: 'Ketik ulang kata sandi baru',
                        hintStyle: textMBold.copyWith(color: neutral50),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: neutral30)))),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  color: neutral20,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Setelah kata sandi diubah, silahkan masuk kembali dengan kata sandi baru.',
                      style: captionTextRegular.copyWith(color: neutral80),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Simpan',
                          style: textMBold,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryMain),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
