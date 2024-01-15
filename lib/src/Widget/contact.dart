import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:flutter_inappwebview/flutter_inappwebview.dart' show InAppWebView, URLRequest, WebUri;

import '../Model/contactModel.dart' show ContactModel;
import '../Model/homeModel.dart' show HomeModel;

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeModel? homeModel =
      Provider.of<HomeModel>(context, listen: false).homeModel;
    ContactModel? contactModel =
      Provider.of<ContactModel>(context, listen: false).contactModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問い合わせ'),
        leading:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(homeModel!.iconImages),
            fit: BoxFit.cover,
          ),
        ),
      ),
        centerTitle: true,
        elevation: 10,
      ),

      body:InAppWebView(
        initialUrlRequest:
          URLRequest(url:WebUri(contactModel!.url)),
      )
    );
  }
}