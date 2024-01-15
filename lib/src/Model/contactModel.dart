import 'package:flutter/material.dart';

class ContactModel extends ChangeNotifier {
  static ContactModel? _contactModel;

  ContactModel._();

  factory ContactModel() {
    _contactModel ??= ContactModel._();
    return _contactModel!;
  }

  @override
  void dispose() {
    super.dispose();
    _contactModel = null;
  }

  final String _url = 'https://forms.gle/e5ELYswbrPFXaW7cA';

  ContactModel? get contactModel => _contactModel;
  String get url => _url;
}