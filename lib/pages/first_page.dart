import 'package:flutter/material.dart';

import '../widgets/number_widget.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () => setState(() => number += 1),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: NumberWidget(number: number),
    );
  }
}
