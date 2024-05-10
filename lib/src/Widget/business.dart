import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;

import '../Model/businessModel.dart' show BusinessModel;

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BusinessModel? businessModel =
        Provider.of<BusinessModel>(context, listen: false).businessModel;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: businessModel!.business.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            title: AutoSizeText(
              businessModel.business[index]['title'] ?? "",
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            subtitle: AutoSizeText(
              businessModel.business[index]['explanation'] ?? "",
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            isThreeLine :true,
          ),
        );
      }
    );
  }
}