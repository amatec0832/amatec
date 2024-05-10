import 'package:flutter/material.dart';

class ResponsiveLayoutModel extends ChangeNotifier {
  static ResponsiveLayoutModel? _responsiveLayoutModel;

  ResponsiveLayoutModel._();

  factory ResponsiveLayoutModel() {
    _responsiveLayoutModel ??= ResponsiveLayoutModel._();
    return _responsiveLayoutModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _responsiveLayoutModel = null;
  }

  int _crossAxisCount = 0;

  void setcrossAxisCount(int value){
    if(_crossAxisCount != value){
      _crossAxisCount = value;
      print("crossAxisCount $_crossAxisCount");
      notifyListeners();
    }
  }

  ResponsiveLayoutModel? get responsiveLayoutModel => _responsiveLayoutModel;
  int get crossAxisCount => _crossAxisCount;
}