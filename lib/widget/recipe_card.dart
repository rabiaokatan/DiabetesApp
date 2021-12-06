import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/shimmer_widget.dart';

import '../responsive.dart';

class RecipeCard extends StatelessWidget {
  bool isLoading;
  String name;
  String photoURL;
  RecipeCard({
    Key? key,
    required this.isLoading,
    required this.name,
    required this.photoURL,
  }) : super(key: key);

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
          //tarif fotoğraflarının arkaplanındaki yeşil container
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
            // fotoğraf ile arkadaki yeşil container arasındaki padding:
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
                  //tarif fotoğrafının bulunduğu container
                  //telefon, tablet ya da desktopa göre boyut ayarlaması yapılır:
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
                    //tarif fotoğrafının borderRadius alması için cliprrect kullandım
                    child: isLoading
                        ? ShimmerWidget.circular(
                            width: width,
                            height: height,
                            shapeBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              photoURL,
                              fit: BoxFit.fill,
                            ),
                          ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile
                          ? 15
                          : isTablet
                              ? 18
                              : 20,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
