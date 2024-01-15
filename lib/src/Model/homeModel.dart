import 'package:flutter/material.dart';

class HomeModel extends ChangeNotifier {
  static HomeModel? _homeModel;

  HomeModel._();

  factory HomeModel() {
    _homeModel ??= HomeModel._();
    return _homeModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _homeModel = null;
  }

  final String _name = '@matec(アマテック)';
  final String _iconImages = 'images/amatec.jpeg';

  HomeModel? get homeModel => _homeModel;
  String get name => _name;
  String get iconImages => _iconImages;
}