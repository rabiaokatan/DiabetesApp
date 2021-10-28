import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';

import '../responsive.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);

    final double height = _size.height;
    final double width = _size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
      ),
      child: Stack(
        children: [
          Container(
            height: height *
                (isMobile
                    ? 0.3
                    : isTablet
                        ? 0.35
                        : 0.4),
            width: width *
                (isMobile
                    ? 0.6
                    : isTablet
                        ? 0.45
                        : 0.2),
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
              padding: EdgeInsets.symmetric(
                vertical: height *
                    (isMobile
                        ? 0.02
                        : isTablet
                            ? 0.02
                            : 0.001),
                horizontal: width *
                    (isMobile
                        ? 0.04
                        : isTablet
                            ? 0.03
                            : 0.015),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height *
                        (isMobile
                            ? 0.2
                            : isTablet
                                ? 0.25
                                : 0.3),
                    width: width *
                        (isMobile
                            ? 0.5
                            : isTablet
                                ? 0.6
                                : 0.6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/tortilla-wrap.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Tortilla Wrap',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: !isTablet ? 12 : 20,
            bottom: !isTablet ? 40 : 70,
            child: Container(
              height: isMobile
                  ? height * 0.06
                  : isTablet
                      ? height * 0.045
                      : height * 0.07,
              width: isMobile
                  ? width * 0.12
                  : isTablet
                      ? width * 0.055
                      : width * 0.035,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                '20 \n kcal',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kSecondaryColor,
                  fontFamily: 'Merriweather',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
