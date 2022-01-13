import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Main Page',
            style: TextStyle(
              color: Color.fromRGBO(245, 246, 249, 1),
            ),
          ),
          backgroundColor: Color.fromRGBO(133, 150, 178, 0.4),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(133, 150, 178, 0.4),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/create_auth');
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                    child: Text(
                      'Create PIN',
                      style: TextStyle(
                          color: Color.fromRGBO(245, 246, 249, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: const Color.fromRGBO(133, 150, 178, 0.4),),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/auth');
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Authentication',
                      style: TextStyle(
                          color: Color.fromRGBO(245, 246, 249, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
