import 'package:flutter/cupertino.dart';

class BottomNavBarViewModel with ChangeNotifier{
  int _index = 0;

  get pageIndex => _index;

  setPageIndex(int index){
    _index = index;
    notifyListeners();
  }
}