import 'dart:math';

class Calculator {
  final height;
  final weight;

  double _bmi = 0;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You need to eat less';
    } else if (_bmi > 18.5) {
      return 'You are ok';
    } else {
      return 'You need to eat more';
    }
  }
}
