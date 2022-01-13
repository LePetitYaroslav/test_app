import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  Widget styleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff91a5c0),
        fontSize: 20,
      ),
    );
  }

  SizedBox colorBtn() {
    return SizedBox(
      width: 12,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          primary: Colors.white,
          shape: const CircleBorder(),
          enableFeedback: false,
          side: const BorderSide(
            color: Color(0xffbec8d9),
            width: 2,
          ),
        ),
        child: null,
      ),
    );
  }

  ElevatedButton btn(String btntxt) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        btntxt,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 30,
          color: Color(0xff768eae),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        shape: const CircleBorder(),
        primary: const Color(0xfff5f6f9),
        padding: const EdgeInsets.all(20),
        onPrimary: const Color(0xfff5f6f9),
        enableFeedback: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                styleText('Enter your PIN'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                colorBtn(),
                const SizedBox(
                  width: 35,
                ),
                colorBtn(),
                const SizedBox(
                  width: 35,
                ),
                colorBtn(),
                const SizedBox(
                  width: 35,
                ),
                colorBtn(),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('1'),
                btn('2'),
                btn('3'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('4'),
                btn('5'),
                btn('6'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('7'),
                btn('8'),
                btn('9'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('0'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
