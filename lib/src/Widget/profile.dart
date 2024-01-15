import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;

import '../Model/profileModel.dart' show ProfileModel;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileModel? profileModel =
        Provider.of<ProfileModel>(context, listen: false).profileModel;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: profileModel!.business.length,
      itemBuilder: (context, index) {
        final business = profileModel.business[index];
        return Center(
          child: Column(
            children : [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 120),
                Text(
                  business['title'] ?? "",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  business['explanation'] ?? "",
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
                height: 0,
                thickness: 1,
                indent: 100,
                endIndent: 100,
                color: Colors.black,
              ),
            ]
          )
        );
      },
    );
  }
}