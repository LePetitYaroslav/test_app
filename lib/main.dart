import 'package:flutter/material.dart';
import 'package:test_app/widgets/auth/auth.dart';
import 'package:test_app/widgets/main_page/main_page.dart';
import 'package:test_app/widgets/create_auth/create_auth.dart';


void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const MainPage(),
        '/create_auth': (context) => const CreateAuth(),
        '/auth': (context) => const Auth(),
      },
      initialRoute: '/',
    );
  }
}
