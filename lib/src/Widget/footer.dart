import 'package:flutter/material.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        width: double.infinity,
        alignment: Alignment.center,
        child: const Text(
          '© 2024 @matec',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}