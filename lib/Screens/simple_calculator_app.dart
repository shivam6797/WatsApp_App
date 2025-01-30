import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  double? _result;

  void _calculate(String operation) {
    final double num1 = double.tryParse(_num1Controller.text) ?? 0;
    final double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case 'add':
          _result = num1 + num2;
          break;
        case 'sub':
          _result = num1 - num2;
          break;
        case 'mul':
          _result = num1 * num2;
          break;
        case 'div':
          _result =
              num2 != 0 ? num1 / num2 : double.nan;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter first number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter second number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('add'),
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('sub'),
                  child: Text("Subtract"),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('mul'),
                  child: Text("Multiply"),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('div'),
                  child: Text("Divide"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              _result == null
                  ? "Result will be shown here"
                  : "Result: ${_result!.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
