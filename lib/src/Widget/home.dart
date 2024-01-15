import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;

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
        title: Text(homeModel!.name),
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
        child : Center(
          child: Column(
            children: <Widget>[
              const Text('@matecはWEBアプリをはじめ、組込制御・ロボットでの システム開発を行う会社です。', style: TextStyle(fontSize: 15.0)),
          
              const SizedBox(height: 8),

              const Text('事業内容', style: TextStyle(fontSize: 35.0)),

              const SizedBox(height: 8),

              const BusinessScreen(),

              const SizedBox(height: 8),

              const Text('実績', style: TextStyle(fontSize: 35.0)),

              const SizedBox(height: 8),

              const AchievementsScreen(),

              const SizedBox(height: 8),

              const Text('会社概要', style: TextStyle(fontSize: 35.0)),

              const SizedBox(height: 8),

              const ProfileScreen(),

              const SizedBox(height: 8),
              
              const Text('お問い合わせ', style: TextStyle(fontSize: 35.0)),

              const SizedBox(height: 8),

              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // ボタンの背景色を黒にする
                ),
                child: const Text(
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