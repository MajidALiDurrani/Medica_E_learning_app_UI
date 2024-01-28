import 'package:flutter/material.dart';

class MainScreenNotifier extends ChangeNotifier {
  int _pageindex = 0;

  int get pageIndex => _pageindex;

  set pageindex(int newindex) {
    _pageindex = newindex;
    notifyListeners();
  }
}
