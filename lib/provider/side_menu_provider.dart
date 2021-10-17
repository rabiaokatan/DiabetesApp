import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/side_menu_items.dart';

class SideMenuProvider extends ChangeNotifier {
  SideMenuItems _sideMenuItem = SideMenuItems.anasayfa;

  SideMenuItems get sideMenuItem => _sideMenuItem;

  void setSideMenuItem(SideMenuItems sideMenuItem) {
    _sideMenuItem = sideMenuItem;

    notifyListeners();
  }
}
