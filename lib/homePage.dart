import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1 = TextEditingController(text: '0');

  TextEditingController t2 = TextEditingController(text: '0');

  var num1, num2;
  double res = 0;
  void addition(num1, num2) {
    setState(() {
      res = num1 + num2;
    });
  }

  void subtraction(num1, num2) {
    setState(() {
      res = num1 - num2;
    });
  }

  void multiplication(num1, num2) {
    setState(() {
      res = num1 * num2;
    });
  }

  void division(num1, num2) {
    setState(() {
      res = (num1 / num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Output:$res',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number 1',
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number 2',
                ),
                controller: t2,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        addition(double.parse(t1.text), double.parse(t2.text));
                      },
                      child: Text('+'),
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RaisedButton(
                      onPressed: () {
                        subtraction(
                            double.parse(t1.text), double.parse(t2.text));
                      },
                      child: Text('-'),
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        multiplication(
                            double.parse(t1.text), double.parse(t2.text));
                      },
                      child: Text('*'),
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RaisedButton(
                      onPressed: () {
                        division(double.parse(t1.text), double.parse(t2.text));
                      },
                      child: Text('/'),
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
