import 'package:flutter/material.dart';

void main() {
  runApp(const DalelAPP());
}

class DalelAPP extends StatelessWidget {
  const DalelAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalel APP',
      home: Placeholder(),
    );
  }
}
