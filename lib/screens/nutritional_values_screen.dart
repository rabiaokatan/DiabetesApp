import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diabetes_app/models/nutritional_values.dart';
import 'package:flutter_diabetes_app/responsive.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/screens/home_screen.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';

class NutritionalValuesScreen extends StatefulWidget {
  const NutritionalValuesScreen({Key? key}) : super(key: key);

  @override
  _NutritionalValuesScreenState createState() =>
      _NutritionalValuesScreenState();
}

class _NutritionalValuesScreenState extends State<NutritionalValuesScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    bool isDesktop = Responsive.isDesktop(context);
    ScrollController _scrollController = ScrollController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Besin Değerleri',
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
            Padding(
              padding: isDesktop
                  ? EdgeInsets.only(
                      left: _size.width * 0.20,
                      right: _size.width * 0.02,
                      top: _size.height * 0.05)
                  : EdgeInsets.only(
                      left: _size.width * 0.03,
                      right: _size.width * 0.03,
                      top: isTablet ? _size.height * 0.01 : _size.height * 0.01,
                      bottom: _size.height * 0.02),
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: _size.height * 0.02),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: SingleChildScrollView(
                    child: Scrollbar(
                      isAlwaysShown: true,
                      controller: _scrollController,
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columnSpacing: isDesktop ? _size.width * 0.1 : 56,
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                "Besin (100g)",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Kalori (kcal)",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Yağ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Protein",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Karbonhidrat (tümü)",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Kolestrol",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Sodyum",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Potasyum",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Kalsiyum",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Merriweather',
                                ),
                              ),
                            ),
                          ],
                          rows: nutritionalValuesList.map((item) {
                            return DataRow(
                                color: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (item.id % 2 == 0)
                                    return Colors.grey.shade300;
                                  return Colors
                                      .transparent; // Use the default value.
                                }),
                                cells: [
                                  DataCell(Text(item.name)),
                                  DataCell(Center(child: Text(item.calorie))),
                                  DataCell(Center(child: Text(item.fat))),
                                  DataCell(Center(child: Text(item.protein))),
                                  DataCell(Center(
                                      child: Text(item.totalCarbohydrate))),
                                  DataCell(
                                      Center(child: Text(item.cholesterol))),
                                  DataCell(Center(child: Text(item.sodium))),
                                  DataCell(Center(child: Text(item.potassium))),
                                  DataCell(Center(child: Text(item.calcium))),
                                ]);
                          }).toList(),
                        ),
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
