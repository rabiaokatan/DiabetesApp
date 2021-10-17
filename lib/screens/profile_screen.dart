import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/main.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 0 : 50,
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Responsive.isDesktop(context) ?  Colors.transparent : Colors.black)) ,
        body: Stack(
          children: [
             Responsive.isDesktop(context) ? SideMenu() : Container(),
            Responsive(
              mobile: Container(
                child: Center(child: Text('mobile profile screen')),
              ),
              tablet: Container(
                child: Center(child: Text('tablet profile screen')),
              ),
              desktop: Container(
                child: Center(child: Text('web profile screen')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
