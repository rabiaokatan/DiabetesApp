import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';

class BackRecipeCard extends StatelessWidget {
  int kcal;
  BackRecipeCard({Key? key, required this.kcal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    final double height = _size.height;
    final double width = _size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height *
            (isMobile
                ? 0.02
                : isTablet
                    ? 0.02
                    : 0.001),
        horizontal: width *
            (isMobile
                ? 0.204
                : isTablet
                    ? 0.03
                    : 0.015),
      ),
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kPrimaryColor,
                kDoubleLightColor,
                Colors.yellow.shade100
              ],
              //colors: [kPrimaryColor ,kDoubleLightColor],
            ),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
              ),
            ],
          ),
          child: Center(
            child: Text('$kcal kcal'),
          )),
    );
  }
}
