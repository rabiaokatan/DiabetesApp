import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

class NutritionalValuesScreen extends StatefulWidget {
  const NutritionalValuesScreen({Key? key}) : super(key: key);

  @override
  _NutritionalValuesScreenState createState() =>
      _NutritionalValuesScreenState();
}

class _NutritionalValuesScreenState extends State<NutritionalValuesScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    bool isDesktop = Responsive.isDesktop(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Besin Değerleri',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
          ),
          backgroundColor: isDesktop ? Colors.transparent : kDoubleLightColor,
          elevation: isDesktop ? 0 : 6,
          iconTheme: IconThemeData(
              color: isDesktop ? Colors.transparent : Colors.black),
        ),
        body: Stack(
          children: [
            isDesktop ? SideMenu() : Container(),
            Padding(
               padding:isDesktop ? EdgeInsets.only(left:_size.width*0.7, top: _size.height*0.04, bottom:_size.height*0.03, right:_size.width*0.05 ) : EdgeInsets.symmetric(vertical: _size.height*0.03, horizontal:_size.width*0.05 ),
              child: Container(
                width: _size.width * ( isDesktop ? 0.3 : 0.98),
                height: _size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                 borderRadius: BorderRadius.circular(isTablet ? 50 : 25),
                ),
                child:  ListTile(
                  leading: Icon(Icons.search, size: isMobile ? _size.width*0.05 : isTablet ? _size.width*0.04 : _size.width*0.015,),
                  title:  TextField(
                     decoration: InputDecoration(hintText: 'Ara...', hintStyle: TextStyle(color: Colors.grey[700], fontSize: isMobile ? _size.width*0.05 : isTablet ? _size.width*0.04 : _size.width*0.015 ), border: InputBorder.none),
                     ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
