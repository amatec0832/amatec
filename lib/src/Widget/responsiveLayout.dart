import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;

import 'home.dart' show HomeScreen;

import '../Model/responsiveLayoutModel.dart' show ResponsiveLayoutModel;

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveLayoutModel? layoutModel =
        Provider.of<ResponsiveLayoutModel>(context, listen: false).responsiveLayoutModel;
    return LayoutBuilder(
        builder: (context, constraints) {
          // 画面幅に応じて表示する列数を変更
          double width = constraints.maxWidth;// 画面幅を取得
          // PCサイズ以上の場合は4列
          if (width >= 800) {
            layoutModel!.setcrossAxisCount(3);
          // タブレットサイズの場合は3列
          } else if (width >= 500) {
            layoutModel!.setcrossAxisCount(3);
          // スマホサイズの場合は1列
          } else {
            layoutModel!.setcrossAxisCount(1);
          }
          return const HomeScreen();
        },
    );
  }
}