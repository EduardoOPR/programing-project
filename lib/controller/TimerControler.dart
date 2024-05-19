import 'package:flutter/material.dart';

class TimerInfo extends ChangeNotifier {
  int _remainingTime = 120;
  bool _isOver = false;

  int getRemainingTime() => _remainingTime;
  bool getIsOver() => _isOver;

  updateRemainingTime() {
    if (_remainingTime > 1) {
      _remainingTime--;
    } else {
      _isOver = true;
    }

    notifyListeners();
  }
}
