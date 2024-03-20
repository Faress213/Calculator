import 'package:flutter/material.dart';

class CalculatorItems with ChangeNotifier {
  String FirstNumber = "";
  String SecondNumber = "";
  String Operation = "";
  int Num1 = 1;
  int Num2 = 2;
  int Num3 = 3;
  int Num4 = 4;
  int Num5 = 5;
  int Num6 = 6;
  int Num7 = 7;
  int Num8 = 8;
  int Num9 = 9;
  int Num0 = 0;

  void ClearField() {
    FirstNumber = "";
    SecondNumber = "";
    Operation = "";
    notifyListeners();
  }

  void EnterNumber(String num) {
    if (FirstNumber == 'Infinity') {
      FirstNumber = num;
    } else if (Operation == "") {
      if (num == '.' && (FirstNumber.contains('.'))) {
      } else {
        FirstNumber += num;
      }
    } else {
      if (num == '.' && (SecondNumber.contains('.'))) {
      } else {
        SecondNumber += num;
      }
    }
    notifyListeners();
  }

  void EnterOperation(String symbol) {
    if (FirstNumber == "Error" ||
        FirstNumber == "Nan" ||
        FirstNumber == "Infinity") {
      FirstNumber = "";
      notifyListeners();
    } else if (FirstNumber != '' && SecondNumber == "") {
      Operation = symbol;
    } else if (Operation != "" && SecondNumber != "") {
      Result();
      if (FirstNumber == "Error" ||
          FirstNumber == "Infinity" ||
          FirstNumber == "-Infinity" ||
          FirstNumber == "NaN") {
        FirstNumber = "";
        Operation = "";
      } else {
        Operation = symbol;
      }
    }
    notifyListeners();
  }

  void Result() {
    try {
      if (FirstNumber != "" && SecondNumber != "" && Operation != "") {
        if (Operation == '/') {
          FirstNumber =
              (num.parse(FirstNumber) / num.parse(SecondNumber)).toString();
          SecondNumber = "";
          Operation = "";
        } else if (Operation == 'x') {
          FirstNumber =
              (num.parse(FirstNumber) * num.parse(SecondNumber)).toString();
          SecondNumber = "";
          Operation = "";
        } else if (Operation == '+') {
          FirstNumber =
              (num.parse(FirstNumber) + num.parse(SecondNumber)).toString();
          SecondNumber = "";
          Operation = "";
        } else if (Operation == '-') {
          FirstNumber =
              (num.parse(FirstNumber) - num.parse(SecondNumber)).toString();
          SecondNumber = "";
          Operation = "";
        }

        notifyListeners();
      }
    } catch (e) {
      FirstNumber = "Error";
      Operation = "";
      SecondNumber = "";
      notifyListeners();
    }
  }

  void Mod() {
    if (Operation != "" && SecondNumber != "") {
      SecondNumber = (num.parse(SecondNumber) / 100).toString();
      notifyListeners();
    } else if (FirstNumber != "") {
      FirstNumber = (num.parse(FirstNumber) / 100).toString();
      notifyListeners();
    }
  }

  void Signal() {
    if (Operation != "" && SecondNumber != "") {
      SecondNumber = (num.parse(SecondNumber) * -1).toString();
      notifyListeners();
    } else if (FirstNumber != "") {
      FirstNumber = (num.parse(FirstNumber) * -1).toString();
      notifyListeners();
    }
  }

  void RemoveLast() {
    if (FirstNumber == "Error" ||
        FirstNumber == "NaN" ||
        FirstNumber == "Infinity" ||
        FirstNumber == "-Infinity") {
      FirstNumber = "";
      notifyListeners();
    } else if (Operation != "" && SecondNumber == "") {
      Operation = "";
      notifyListeners();
    } else if (Operation != "" && SecondNumber != "") {
      if (!SecondNumber.contains('-')) {
        SecondNumber = SecondNumber.substring(0, SecondNumber.length - 1);
      }

      notifyListeners();
    } else if (FirstNumber != "") {
      if (!FirstNumber.contains('-')) {
        FirstNumber = FirstNumber.substring(0, FirstNumber.length - 1);
      }

      notifyListeners();
    }
  }
}
