import 'package:flutter/material.dart';

class ProfileModel extends ChangeNotifier {
  static ProfileModel? _profileModel;

  ProfileModel._();

  factory ProfileModel() {
    _profileModel ??= ProfileModel._();
    return _profileModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _profileModel = null;
  }

  final List<Map<String, String>> _businessList = [
    {
      'title': '会社名　 : ',
      'explanation': '@matec',
    },
    {
      'title': '創立　　 : ',
      'explanation': '2023年11月',
    },
    {
      'title': '代表　　 : ',
      'explanation': '天野 良祐',
    },
    {
      'title': '事業内容 : ',
      'explanation': 'スマホアプリ・Webアプリの開発事業 \n オンラインサロン事業 \n 受託開発事業 \n 事業開発サポート',
    },
  ];


  ProfileModel? get profileModel => _profileModel;
  List<Map<String, String>> get business => _businessList;
}