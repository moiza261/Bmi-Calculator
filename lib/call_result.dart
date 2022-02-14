import 'dart:math';

class CalculateResult {
  CalculateResult(this.height, this.weight,this.result,this.msg);
  final int height;
  final int weight;
  double result;
  String msg;
  calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  getDes() {
    if (result > 25) {
      msg = 'Overweight';
      return 'You have a higher weight then normal';
    } else if (result > 18.5) {
      msg = 'Normal';
      return 'You Have a normal Weight';
    } else if (result < 18.5) {
      msg = 'Weak';
      return 'Your weight is less then to normal';
    }
  }
}
