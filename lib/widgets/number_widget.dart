import 'package:flutter/material.dart';
import 'package:life_cycle/pages/second_page.dart';

class NumberWidget extends StatefulWidget {
  final int number;
  NumberWidget({required this.number});

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget>
    with SingleTickerProviderStateMixin {
  late int number;
  // late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    print('Number: ${widget.number} initState');
    number = widget.number;
    // _animationController = AnimationController(vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant NumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} didUpdateWidget');
    if (widget.number != oldWidget.number) {
      print('number has changed');
    }
  }

  @override
  void deactivate() {
    print('Number: ${widget.number} deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Number: ${widget.number} dispose');
    // _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: ${widget.number} build');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 200.0,
            width: 300.0,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),
              ),
              onPressed: () {
                print('number: ${widget.number} setState');
                setState(() => number += 1);
              },
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
              color: Colors.black,
              width: 1.5,
            )),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(title: 'Second Page'),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Second page ->',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
