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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: _size.height * 0.1,
                ),
                Responsive(
                  mobile: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Haydi başlayalım!',
                            style: TextStyle(
                              fontSize: 16,
                              color: kPrimaryColor, //Colors.black,
                              fontFamily: 'Shrikhand',
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
                          Text(
                            'Haydi başlayalım!',
                            style: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor, //Colors.black,
                              fontFamily: 'Shrikhand',
                            ),
                          ),
                          SizedBox(height: _size.height * 0.02),
                          Image.asset("assets/images/bg_photo.jpg"),
                        ],
                      ),
                    ),
                  ),
                  desktop: Container(
                    padding: EdgeInsets.only(left:_size.width*0.12),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Haydi başlayalım!',
                            style: TextStyle(
                              fontSize: 24,
                              color: kPrimaryColor, //Colors.black,
                              fontFamily: 'Shrikhand',
                            ),
                          ),
                          SizedBox(height: _size.height * 0.02),
                          Image.asset("assets/images/bg_photo.jpg"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: Responsive.isDesktop(context)?  EdgeInsets.only(bottom:10, left:_size.width*0.12) :
                  const EdgeInsets.symmetric(vertical: 10,),
                  child: Text('Diabetes App v.00.01',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Merriweather')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
