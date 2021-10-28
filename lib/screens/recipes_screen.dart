import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/recipes.dart';
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
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    bool isDesktop = Responsive.isDesktop(context);
    int totalRecipeNumber= recipes.length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 0 : 56,
          title: Text(
            'Sağlıklı Tarifler',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20 ),
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
              thumbColor: Responsive.isMobile(context)
                  ? kDoubleLightColor
                  : Colors.transparent,
              radius: Radius.circular(20),
              thickness: 5,
              child: Padding(
                padding:isDesktop ? EdgeInsets.only(left: _size.width*0.18) :  EdgeInsets.only(left:0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isMobile ? 1 : isTablet ? 2 : 3 ,
                      childAspectRatio: isMobile ? 1.5 : isTablet ? 1 : 1.2 ,
                      crossAxisSpacing:isMobile ? 0.2 : isTablet ? 0.4 : 0.1,
                      mainAxisSpacing: isMobile ? 0.2 : isTablet ? 0.4 : 0.1,
                    ),
                    itemBuilder: (context, index) {    
                      return Center(child: RecipeCard(name: recipes[index].name, photoURL: recipes[index].image,));
                    },
                    itemCount: totalRecipeNumber,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
