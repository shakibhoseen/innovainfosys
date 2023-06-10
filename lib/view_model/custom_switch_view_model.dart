import 'package:flutter/cupertino.dart';

class CustomSwitchViewModel with ChangeNotifier{
  bool _isSwitchOn = true;

  get isSwitchOn => _isSwitchOn;

  setSwitchState(bool isSwitchOn){
    _isSwitchOn = isSwitchOn;
    notifyListeners();
  }
}