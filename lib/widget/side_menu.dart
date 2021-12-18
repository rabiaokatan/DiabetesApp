import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/side_menu_items.dart';
import 'package:flutter_diabetes_app/provider/side_menu_provider.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/avatar.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: _size.width *
          (Responsive.isMobile(context)
              ? 0.6
              : Responsive.isTablet(context)
                  ? 0.4
                  : 0.18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [kPrimaryColor, kDoubleLightColor],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: _size.height * 0.04,
                ),
                Avatar(
                    size: Responsive.isMobile(context)
                        ? 0.1
                        : Responsive.isTablet(context)
                            ? 0.055
                            : 0.04),
                SizedBox(
                  height: _size.height * 0.04,
                ),
                sideMenuButtons(context,
                    iconName: Icons.food_bank_outlined,
                    title: 'Sağlıklı Tarifler',
                    item: SideMenuItems.saglikliTarifler),
                sideMenuButtons(context,
                    iconName: Icons.room_service_outlined,
                    title: 'Besin Değerleri',
                    item: SideMenuItems.besinDegerleri),
                sideMenuButtons(context,
                    iconName: Icons.free_breakfast_outlined,
                    title: 'Su Takibi',
                    item: SideMenuItems.suTakibi),
                sideMenuButtons(context,
                    iconName: Icons.local_hospital_outlined,
                    title: 'Hastalığım Hakkında',
                    item: SideMenuItems.hastaligimHakkinda),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget sideMenuButtons(
    BuildContext context, {
    required SideMenuItems item,
    required IconData iconName,
    required String title,
  }) {
    final provider = Provider.of<SideMenuProvider>(context);
    final currentItem = provider.sideMenuItem;
    final isSelected = item == currentItem;

    final color = Colors.white;

    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListTile(
          selected: isSelected,
          selectedTileColor: kPrimaryColor.withOpacity(0.3),
          leading: Icon(iconName, color: color),
          title: Text(title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: color,
                fontSize: isMobile
                    ? 15
                    : isTablet
                        ? 18
                        : 20,
              )),
          onTap: () => selectItem(context, item),
        ),
      ),
    );
  }

  void selectItem(BuildContext context, SideMenuItems item) {
    final provider = Provider.of<SideMenuProvider>(context, listen: false);
    provider.setSideMenuItem(item);
  }
}
