import 'package:flutter/material.dart';
import 'package:flutter_diabetes_app/models/recipes.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/recipe_card.dart';
import 'package:flutter_diabetes_app/widget/shimmer_widget.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

import '../responsive.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future loadData() async {
    setState(() => isLoading = true);

    await Future.delayed(Duration(milliseconds: 500), () {});

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    bool isDesktop = Responsive.isDesktop(context);
    int totalRecipeNumber = recipes.length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Sağlıklı Tarifler',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
          ),
          backgroundColor: isDesktop ? Colors.transparent : kDoubleLightColor,
          elevation: isDesktop ? 0 : 6,
          iconTheme: IconThemeData(
              color: isDesktop ? Colors.transparent : Colors.black),
        ),
        body: Stack(
          children: [
            isDesktop ? SideMenu() : Container(),
            RawScrollbar(
              thumbColor: isMobile ? kDoubleLightColor : Colors.transparent,
              radius: Radius.circular(20),
              thickness: 5,
              child: Padding(
                padding: isDesktop
                    ? EdgeInsets.only(left: _size.width * 0.18)
                    : EdgeInsets.only(left: 0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isMobile
                        ? 1
                        : isTablet
                            ? 2
                            : 3,
                    childAspectRatio: isMobile
                        ? 1.5
                        : isTablet
                            ? 1
                            : 1.2,
                    crossAxisSpacing: isMobile
                        ? 0.2
                        : isTablet
                            ? 0.4
                            : 0.1,
                    mainAxisSpacing: isMobile
                        ? 0.2
                        : isTablet
                            ? 0.4
                            : 0.1,
                  ),
                  itemBuilder: (context, index) {
                    return Center(
                        child: RecipeCard(
                      isLoading: isLoading,
                      name: recipes[index].name,
                      photoURL: recipes[index].image,
                    ));
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
