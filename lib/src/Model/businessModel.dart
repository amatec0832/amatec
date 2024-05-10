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
      'title': 'アプリ開発事業',
      'explanation': '持ち込みいただいた企画をもとに、設計から開発、テスト等のアプリ公開に\n必要な開発工程を一式でサポートいたします。',
    },
    {
      'title': 'オンラインサロン事業',
      'explanation': 'ホームページ制作・運営・動画編集・SNSの運用を一式サポートいたします。',
    },
    {
      'title': '事業開発サポート',
      'explanation': '課題解決における技術サポートや、アプリの作成、試作運用を行いアジャイルにてサポートします。',
    },
  ];


  BusinessModel? get businessModel => _businessModel;
  List<Map<String, String>> get business => _businessList;
}