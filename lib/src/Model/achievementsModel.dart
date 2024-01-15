import 'package:flutter/material.dart';

class AchievementsModel extends ChangeNotifier {
  static AchievementsModel? _achievementsModel;

  AchievementsModel._();

  factory AchievementsModel() {
    _achievementsModel ??= AchievementsModel._();
    return _achievementsModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _achievementsModel = null;
  }

  final List<Map<String, String>> _achievementList = [
    {
      'title': '訪問販売アプリ',
      'explanation': '持ち込みいただいた企画をもとに、設計から開発、テスト等の必要な開発工程を一式でサポートしております。',
      'url' : 'https://amatec-hellowork.web.app/',
    },
    {
      'title': '習い事管理アプリ',
      'explanation': '自社の企画をもとに、設計・開発・テストを実施後にアプリをリリースし、保守メンテを予定しております。',
      'url' : '',
    },
    {
      'title': 'カードゲームプラットフォームアプリ',
      'explanation': '課題解決における技術サポートや、アプリの作成、試作運用を行いアジャイルにてサポートします。',
      'url' : 'https://cardgame-e400a.web.app/',
    },
    {
      'title': 'レンタルスペース',
      'explanation': 'ホームページ制作・運営・SNSの運用をサポートしております。',
      'url' : 'https://nukumori-rentalspace.com/',
    },
    {
      'title': 'ピアノ教室',
      'explanation': 'ホームページ制作・運営・SNSの運用をサポートしております。',
      'url' : 'https://kasumi-irodorimusic.com/',
    },
    {
      'title': 'カツラボレシピサイト',
      'explanation': 'ホームページ制作(レシピサイト)・運営・SNSの運用をサポートしております。',
      'url' : 'https://katsulabo-kitchen.com/',
    },
    {
      'title': 'カツラボチャンネル',
      'explanation': '動画編集・運営・SNSの運用をサポートしております。',
      'url' : 'https://www.youtube.com/@japanesefoodkitchen--5882',
    },
    {
      'title': 'LinuxOS向けアプリケーション',
      'explanation': 'QRコード書き込みアプリを設計・実装・テストをサポートしております。',
      'url' : '',
    },
      {
      'title': 'ECサイト構築',
      'explanation': '企画・設計・実装を行い、運営管理、保守メンテを行っております。',
      'url' : '',
    },
  ];

  AchievementsModel? get achievementsModel => _achievementsModel;
  List<Map<String, String>> get achievementList => _achievementList;
}