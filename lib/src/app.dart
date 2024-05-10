import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:provider/provider.dart' show ChangeNotifierProvider, MultiProvider;

import 'Widget/responsiveLayout.dart' show ResponsiveLayout;

import 'Model/homeModel.dart' show HomeModel;
import 'Model/businessModel.dart' show BusinessModel;
import 'Model/achievementsModel.dart' show AchievementsModel;
import 'Model/profileModel.dart' show ProfileModel;
import 'Model/contactModel.dart' show ContactModel;
import 'Model/responsiveLayoutModel.dart' show ResponsiveLayoutModel;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeModel()),
        ChangeNotifierProvider(create: (context) => BusinessModel()),
        ChangeNotifierProvider(create: (context) => AchievementsModel()),
        ChangeNotifierProvider(create: (context) => ProfileModel()),
        ChangeNotifierProvider(create: (context) => ContactModel()),
        ChangeNotifierProvider(create: (context) => ResponsiveLayoutModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '@matec',
        theme: ThemeData(
            textTheme: kIsWeb ? GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme
          ) : null,
          primarySwatch: Colors.blue,
        ),
        home: const ResponsiveLayout(),
      ),
    );
  }
}