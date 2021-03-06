import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diabetes_app/models/side_menu_items.dart';
import 'package:flutter_diabetes_app/provider/side_menu_provider.dart';
import 'package:flutter_diabetes_app/screens/about_diabetes_screen.dart';
import 'package:flutter_diabetes_app/screens/home_screen.dart';
import 'package:flutter_diabetes_app/screens/nutritional_values_screen.dart';
import 'package:flutter_diabetes_app/screens/water_tracker_screen.dart';
import 'package:provider/provider.dart';
import 'screens/recipes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SideMenuProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 15,
              fontFamily: 'Merriweather',
              color: Colors.black,
            ),
            bodyText2: TextStyle(
              fontSize: 15,
              fontFamily: 'Merriweather',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<SideMenuProvider>(context);
    final sideMenuItem = provider.sideMenuItem;

    switch (sideMenuItem) {
      case SideMenuItems.anasayfa:
        return HomeScreen();
      case SideMenuItems.saglikliTarifler:
        return RecipesScreen();
      case SideMenuItems.besinDegerleri:
        return NutritionalValuesScreen();
      case SideMenuItems.suTakibi:
        return WaterTrackerScreen();
      case SideMenuItems.hastaligimHakkinda:
        return AboutDiabetes();
    }
  }
}

