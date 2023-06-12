import 'package:flutter/material.dart';
import 'package:life_cycle/pages/first_page.dart';

import 'pages/life_cycle.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      // home: LifeCycle(),
    );
  }
}
