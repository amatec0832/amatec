import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:url_launcher/url_launcher.dart';

import '../Model/achievementsModel.dart' show AchievementsModel;

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  AchievementsModel? achievementsModel = Provider.of<AchievementsModel>(context, listen: false).achievementsModel;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0.1,
        mainAxisSpacing: 0.1,
        childAspectRatio: 2,
      ),
      itemCount: achievementsModel!.achievementList.length,
      itemBuilder: (context, index) {
        String url = achievementsModel.achievementList[index]['url'] ?? "";
        return Card(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    achievementsModel.achievementList[index]['title'] ?? "",
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    achievementsModel.achievementList[index]['explanation'] ?? "",
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                if(url != "")
                  GestureDetector(
                    onTap: () {
                      _launchURL(url);
                    },
                    child: const Text(
                      '詳細はこちら',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _launchURL(String value) async {
    final url = Uri.parse(value);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}