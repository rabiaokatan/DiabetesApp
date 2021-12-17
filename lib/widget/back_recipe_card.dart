import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/recipes.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('$kcal kcal'),
                SizedBox(height: _size.height * 0.02),
                TextButton(
                    onPressed: () => _onPressed(context),
                    child: Text(
                      'Tarifi Görüntüle',
                      style: TextStyle(color: kPrimaryColor, fontSize: 18),
                    )),
              ],
            ),
          )),
    );
  }

  void _onPressed(BuildContext context) {
    String x = key.toString();
    final index = int.parse(x.replaceAll(RegExp('[^0-9]'), ''));

    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
             // height: 50,
              child: Center(child: Text(recipes[index].name)),
            ),
          );
        });
  }
}
