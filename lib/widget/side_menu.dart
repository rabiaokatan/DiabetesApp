import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/side_menu_items.dart';
import 'package:flutter_diabetes_app/provider/side_menu_provider.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
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
        color: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? Colors.white
            : kLightColor.withOpacity(0.2),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: _size.height * 0.04,
                ),
                CircleAvatar(
                  radius:
                      _size.width * (Responsive.isMobile(context) ? 0.1 : Responsive.isTablet(context) ? 0.06 : 0.04),
                  //backgroundImage: NetworkImage(url),
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(
                  height: _size.height * 0.04,
                ),
                sideMenuButtons(context,
                    iconName: Icons.person,
                    title: 'Profilim',
                    item: SideMenuItems.profilim),
                sideMenuButtons(context,
                    iconName: Icons.food_bank_outlined,
                    title: 'Sağlıklı Tarifler',
                    item: SideMenuItems.saglikliTarifler),
                sideMenuButtons(context,
                    iconName: Icons.sports_handball_rounded,
                    title: 'Egzersizler',
                    item: SideMenuItems.egzersizler),
                sideMenuButtons(context,
                    iconName: Icons.water_damage_outlined,
                    title: 'Su Takibi',
                    item: SideMenuItems.suTakibi),
                sideMenuButtons(context,
                    iconName: Icons.local_hospital_outlined,
                    title: 'Hastalığım Hakkında',
                    item: SideMenuItems.hastaligimHakkinda),
                sideMenuButtons(context,
                    iconName: Icons.settings,
                    title: 'Ayarlar',
                    item: SideMenuItems.ayarlar),
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

    final color = Colors.black;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListTile(
          selected: isSelected,
          selectedTileColor: kPrimaryColor.withOpacity(0.3),
          leading: Icon(iconName, color: color),
          title: Text(title,
              style: TextStyle(fontWeight: FontWeight.w700, color: color)),
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
