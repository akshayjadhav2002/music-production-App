import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier{

  get currentIndex =>_currentIndex;
  int _currentIndex = 0;

  void onTap(int index) {
      _currentIndex = index;
    notifyListeners();
  }


}