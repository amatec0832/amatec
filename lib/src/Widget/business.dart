import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;

import '../Model/businessModel.dart' show BusinessModel;

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BusinessModel? businessModel =
        Provider.of<BusinessModel>(context, listen: false).businessModel;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.1,
        mainAxisSpacing: 0.1,
        childAspectRatio: 2.8,
      ),
      itemCount: businessModel!.business.length,
      itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    businessModel.business[index]['title'] ?? "",
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    businessModel.business[index]['explanation'] ?? "",
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}