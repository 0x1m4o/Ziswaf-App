import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ziswaf/theme/colors.dart';
import 'package:ziswaf/theme/fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
          'Lupa Kata Sandi',
          style: textMBold.copyWith(color: neutral90),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView(children: [
            Text(
              'Masukan Email',
              style: textLSemibold,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Kami akan mengirimkan link pengaturan ulang kata sandi melalui email yang dikirimkan.',
                style: textMBold.copyWith(color: neutral70),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Email',
              style: textSBlack.copyWith(color: neutral60),
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: neutral50)),
                    hintText: 'Masukan Email',
                    hintStyle: textMBold.copyWith(color: neutral50),
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(color: neutral30)))),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: BottomAppBar(
            elevation: 0,
            child: Container(
              color: Colors.transparent,
              height: 80,
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
                            'Selanjutnya',
                            style: textMBold,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryMain),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
