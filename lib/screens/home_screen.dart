import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';
import 'package:flutter_diabetes_app/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _globalKey,
        drawer: SideMenu(),
        body: Stack(
          children: [
            Responsive.isMobile(context) || Responsive.isTablet(context)
                ? IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  )
                : SideMenu(),
            Responsive(
              mobile: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO FONT FAMILY DEĞİŞTİR
                      Text(
                        'Hoşgeldiniz',
                        style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryColor, //Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: _size.height * 0.02),
                      Image.asset("assets/images/bg_photo.jpg"),
                    ],
                  ),
                ),
              ),
              tablet: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO FONT FAMILY DEĞİŞTİR
                      Text(
                        'Hoşgeldiniz',
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor, //Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: _size.height * 0.02),
                      Image.asset("assets/images/bg_photo.jpg"),
                    ],
                  ),
                ),
              ),
              desktop: Container(
               child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO FONT FAMILY DEĞİŞTİR
                      Text(
                        'Hoşgeldiniz',
                        style: TextStyle(
                          fontSize: 24,
                          color: kPrimaryColor, //Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: _size.height * 0.02),
                      Image.asset("assets/images/bg_photo.jpg"),
                    ],
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
