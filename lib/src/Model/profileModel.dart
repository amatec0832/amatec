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
      'title': '会社名　　 : ',
      'explanation': '株式会社アマテック',
    },
    {
      'title': '代表取締役 : ',
      'explanation': '天野 良祐',
    },
    {
      'title': '顧問弁護士 : ',
      'explanation': '名古屋第一法律事務所 山本 律宗',
    },
    {
      'title': '所在地　　 : ',
      'explanation': '〒450-0002 \n 愛知県名古屋市名駅5-4-14 花車ビル北館1階',
    },
    {
      'title': '事業内容　 : ',
      'explanation': 'ITソリューション事業 \n スマホアプリ・Webアプリの開発事業 \n ロボット事業',
    },
  ];


  ProfileModel? get profileModel => _profileModel;
  List<Map<String, String>> get business => _businessList;
}