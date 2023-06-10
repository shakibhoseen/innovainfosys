import 'package:flutter/cupertino.dart';

class LampViewModel with ChangeNotifier{
   double _value = 0;

  double get getBrightness => _value;

  setBrightness(double value){
    print("inside$value" );

    _value = value * 100;
    notifyListeners();
  }
}