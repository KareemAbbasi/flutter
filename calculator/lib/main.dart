import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            )),
        padding: EdgeInsets.all(16),
        onPressed: null,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              '0',
              style: TextStyle(fontSize: 38.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              '0',
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton(
                            'C',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.redAccent),
                        buildButton(
                            '⌫',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.blue),
                        buildButton(
                            '÷',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '7',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '8',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '9',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '4',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '5',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '6',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '1',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '2',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '3',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '.',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '0',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                        buildButton(
                            '00',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton(
                            '×',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.blue)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '-',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.blue)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '+',
                            MediaQuery.of(context).size.height * 0.1,
                            Colors.blue)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(
                            '=',
                            MediaQuery.of(context).size.height * 0.2,
                            Colors.redAccent)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
