import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/recipe_card.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

import '../responsive.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
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
            'Sağlıklı Tarifler',
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
            RawScrollbar(
              thumbColor: Responsive.isMobile(context) ? kDoubleLightColor : Colors.transparent,
              radius: Radius.circular(20),
              thickness: 5,
              child: SingleChildScrollView(
                child: Responsive(
                  mobile: Center(
                    child: Column(
                      children: [
                        RecipeCard(),
                        RecipeCard(),
                        RecipeCard(),
                        RecipeCard(),
                        RecipeCard(),
                      ],
                    ),
                  ),
                  tablet: Center(
                    child: Container(
                      padding: EdgeInsets.only(left:_size.width*0.005),
                      child: Column(
                        children: [
                           Row(
                              children: [
                                RecipeCard(),
                                RecipeCard(),
                              ],
                            ),
                            Row(
                              children: [
                                RecipeCard(),
                                RecipeCard(),
                              ],
                            ),
                            Row(
                              children: [
                                RecipeCard(),
                                RecipeCard(),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  desktop: Center(
                    child: Container(
                      padding: EdgeInsets.only(left:_size.width*0.23),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RecipeCard(),
                              RecipeCard(),
                              RecipeCard(),
                            ],
                          ),
                          Row(
                            children: [
                              RecipeCard(),
                              RecipeCard(),
                              RecipeCard(),
                            ],
                          ),
                          Row(
                            children: [
                              RecipeCard(),
                              RecipeCard(),
                              RecipeCard(),
                            ],
                          ),
                          Row(
                            children: [
                              RecipeCard(),
                              RecipeCard(),
                              RecipeCard(),
                            ],
                          ),
                        ],
                      ),
                    ),
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
