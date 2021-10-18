import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/avatar.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 0 : 56,
          title: Text(
            'Profilim',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Responsive.isDesktop(context)
              ? Colors.transparent
              : kDoubleLightColor,
          elevation: Responsive.isDesktop(context) ? 0 : 6,
          iconTheme: IconThemeData(
              color: Responsive.isDesktop(context)
                  ? Colors.transparent
                  : Colors.black),
        ),
        body: Stack(
          children: [
            Responsive.isDesktop(context) ? SideMenu() : Container(),
            SingleChildScrollView(
              //TODO
              child: Padding(
                padding: EdgeInsets.only(bottom: _size.height * 0.05),
                child: Responsive(
                  mobile: ProfileScreenWidget(),
                  tablet: ProfileScreenWidget(),
                  desktop: ProfileScreenWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: Responsive.isDesktop(context) ? _size.width * 0.15 : 0),
          child: Column(
            children: [
              SizedBox(height: _size.height * 0.1),
              Avatar(
                  size: Responsive.isMobile(context)
                      ? 0.15
                      : Responsive.isTablet(context)
                          ? 0.07
                          : 0.05),
              SizedBox(height: _size.height * 0.05),
              Container(
                height: _size.height *
                    (Responsive.isMobile(context)
                        ? 0.4
                        : Responsive.isTablet(context)
                            ? 0.45
                            : 0.5),
                width: _size.width *
                    (Responsive.isMobile(context)
                        ? 0.7
                        : Responsive.isTablet(context)
                            ? 0.6
                            : 0.4),
                decoration: BoxDecoration(
                  color: kDoubleLightColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: _size.width *
                          (Responsive.isMobile(context) ? 0.05 : 0.015)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //TODO DÜZENLE
                      Row(
                        children: [
                          Text(
                            'Ad: ',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'Deneme',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Soyad: ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Deneme',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Diyabet Türü: ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Deneme',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Yaş: ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Deneme',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
