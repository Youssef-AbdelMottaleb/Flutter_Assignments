import 'package:flutter/material.dart';

class CalculatorController{
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  final operationController = TextEditingController();
  double result = 0;
  void calculator(){
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    String operation = operationController.text;
    switch(operation){
      case "+":
          result = num1 + num2;
          break;
      case "-":
          result = num1 - num2;
          break;
      case "*":
        result = num1 * num2;
        break;
      case "/":
        result = num1 / num2;
        break;
      case "%":
        result = num1 % num2;
        break;
      default:
        result = -1;
    }
  }
  String printDetails()
  {
    return result == -1 ? "Invalid Operation": "Result is $result";
  }
}