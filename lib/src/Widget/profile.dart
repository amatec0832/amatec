import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;

import '../Model/profileModel.dart' show ProfileModel;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileModel? profileModel =
        Provider.of<ProfileModel>(context, listen: false).profileModel;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: profileModel!.business.length,
      itemBuilder: (context, index) {
        final business = profileModel.business[index];
        return Column(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      business['title'] ?? "",
                      style: const TextStyle(fontSize: 20),
                    ),
                    AutoSizeText(
                      business['explanation'] ?? "",
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              height: 0,
              thickness: 1,
              indent: 1,
              endIndent: 100,
              color: Colors.black,
            ),
          ],
        );
      },
    );
  }
}