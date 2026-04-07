import 'package:flutter/material.dart';

class BottomNavyController extends ChangeNotifier {
  int index;

  BottomNavyController({this.index = 0});

  void changeIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }
}
