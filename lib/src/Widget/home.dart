import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;

//Model
import '../Model/homeModel.dart' show HomeModel;

//Wedget
import '../Widget/business.dart' show BusinessScreen;
import '../Widget/achievements.dart' show AchievementsScreen;
import '../Widget/footer.dart' show FooterScreen;
import '../Widget/profile.dart' show ProfileScreen;
import '../Widget/contact.dart' show ContactScreen;
  
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeModel? homeModel = Provider.of<HomeModel>(context, listen: false).homeModel;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(homeModel!.name),
        leading:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage(homeModel.iconImages),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '@matecはWEBアプリをはじめ、組込制御・ロボットでの システム開発を行う会社です。', 
                  style: TextStyle(fontSize: 15.0)
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                '事業内容', style: 
                  TextStyle(fontSize: 35.0)
                ),  
              ),
              const BusinessScreen(),
              const Padding(
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '実績', 
                  style: TextStyle(fontSize: 35.0),
                  minFontSize: 12,
                ),
              ),
              const AchievementsScreen(),
              const Padding(
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '会社概要', 
                  style: TextStyle(fontSize: 35.0),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 350,
                  width: 550,
                  child: ProfileScreen(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'お問い合わせ', 
                  style: TextStyle(fontSize: 35.0)
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // ボタンの背景色を黒にする
                ),
                child: const AutoSizeText(
                  'お問い合わせ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const FooterScreen(),
            ],
          ),
        )
      ),
      );
    }
}