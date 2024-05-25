import 'package:flutter/material.dart';

class BusinessModel extends ChangeNotifier {
  static BusinessModel? _businessModel;

  BusinessModel._();

  factory BusinessModel() {
    _businessModel ??= BusinessModel._();
    return _businessModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _businessModel = null;
  }

  final List<Map<String, String>> _businessList = [
    {
      'title': 'ITソリューション事業',
      'explanation': 'システム開発 \n業務改善・DX・自動化 ',
    },
    {
      'title': 'アプリ開発事業',
      'explanation': 'スマフォアプリ受託開発 \nスマフォアプリの企画・デザイン・開発・保守・運営',
    },
    {
      'title': 'ロボット事業',
      'explanation': '教育用プログラム\n工場ラインへのロボットの導入',
    },
  ];


  BusinessModel? get businessModel => _businessModel;
  List<Map<String, String>> get business => _businessList;
}