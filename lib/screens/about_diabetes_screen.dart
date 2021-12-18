import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/about_diabetes.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

class AboutDiabetes extends StatelessWidget {
  const AboutDiabetes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    return SafeArea(
      child: Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Hastalığım Hakkında',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
          ),
          backgroundColor: isDesktop ? Colors.transparent : kDoubleLightColor,
          elevation: isDesktop ? 0 : 6,
          iconTheme: IconThemeData(
              color: isDesktop ? Colors.transparent : Colors.black),
        ),
        body: ListView.builder(
            itemCount: aboutDiabetesTextsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: _size.height * 0.015,
                    horizontal: _size.width * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kLightColor.withOpacity(0.5),
                        kDoubleLightColor.withOpacity(0.5),
                        Colors.yellow.shade100
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: _size.height * 0.025,
                        horizontal: _size.width * 0.06),
                    child: Column(
                      children: [
                        aboutDiabetesTextsList[index].title!=null ?
                          Padding(
                            padding: EdgeInsets.only(bottom:_size.height*0.01),
                            child: Text(
                            aboutDiabetesTextsList[index].title!,
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,height: 1.5),
                            textAlign: TextAlign.center,
                        ),
                          ): SizedBox(height: 0,),
                        Text(
                          aboutDiabetesTextsList[index].text,
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
