import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';
import 'package:flutter_diabetes_app/widget/water_tracker_alert.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../responsive.dart';

class WaterTrackerScreen extends StatefulWidget {
  const WaterTrackerScreen({Key? key}) : super(key: key);

  @override
  State<WaterTrackerScreen> createState() => _WaterTrackerScreenState();
}

class _WaterTrackerScreenState extends State<WaterTrackerScreen> {
  double personWeight = 0.0;
  double _dailyWater = 0.0;
  String water = '';
  int totalGlass = 0;
  int glassCounter = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    TextEditingController _textController = TextEditingController();

    void _dailyWaterCalculation() {
      if (_textController.text.isEmpty) {
        setState(() {
          if (!_formKey.currentState!.validate()) return;
        });
      } else {
        setState(() {
          if (_formKey.currentState!.validate()) return null;
        });
        personWeight = double.parse(_textController.text);
        setState(() {
          _dailyWater = personWeight * 0.03;
          water = _dailyWater
              .toStringAsFixed(2); //virgülden sonra iki basamak gösterir

          totalGlass = ((_dailyWater * 1000) / 200).round();
        });
      }
    }

    return SafeArea(
      child: Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Su Takibi',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
          ),
          backgroundColor: isDesktop ? Colors.transparent : kDoubleLightColor,
          elevation: isDesktop ? 0 : 6,
          iconTheme:
              IconThemeData(color: isDesktop ? Colors.transparent : Colors.black),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              /*horizontal: _size.width*0.05,*/
              vertical: _size.height * 0.05,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kilonuz:'),
                    Padding(
                      padding: EdgeInsets.only(left: _size.width * 0.02),
                      child: Container(
                        width: _size.width * 0.45,
                        height: _size.height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: kLightColor.withOpacity(0.3)),
                        ),
                        alignment: Alignment.center,
                        child: Form(
                          key: _formKey,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: _size.width * 0.06,
                                bottom: _size.height * 0.005),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return 'Lütfen kilonuzu giriniz.';
                                else
                                  return null;
                              },
                              controller: _textController,
                              keyboardType: TextInputType.number,
                              cursorColor: kPrimaryColor,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _size.width * 0.03),
                      child: GestureDetector(
                        onTap: _dailyWaterCalculation,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: _size.height * 0.022,
                              horizontal: _size.width * 0.03),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 7,
                              ),
                            ],
                            color: kLightColor,
                          ),
                          child: Text(
                            'Hesapla',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Günlük su ihtiyacınız:'),
                    _dailyWater == 0.0
                        ? Text('')
                        : Text(
                            ' $water litre',
                            style: TextStyle(fontSize: 20),
                          ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kaç bardak:'),
                    _dailyWater == 0.0
                        ? Text('')
                        : Text(
                            ' $totalGlass bardak (200ml\'lik)',
                            style: TextStyle(fontSize: 20),
                          ),
                  ],
                ),
                SizedBox(height: _size.height * 0.05),
                new CircularPercentIndicator(
                  radius: 200.0,
                  lineWidth: 20.0,
                  percent: glassCounter == 0 ? 0 : glassCounter / totalGlass,
                  animation: true,
                  animationDuration: 1000,
                  center: glassCounter == 0
                      ? Text('%0')
                      : (100 * glassCounter / totalGlass)== 100
                          ? Text('%100')
                          : Text(
                              "%${(100 * glassCounter / totalGlass).toStringAsFixed(2)}"),
                  backgroundColor: kDoubleLightColor,
                  progressColor: kLightColor,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: _size.height * 0.03),
          child: Container(
            width: _size.width * 0.20,
            height: _size.height * 0.1,
            child: FloatingActionButton(
              backgroundColor: kLightColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.free_breakfast_outlined),
                  Icon(Icons.add),
                ],
              ),
              onPressed: () {
                setState(() {
                  glassCounter++;
                  if (glassCounter == totalGlass) print('tebrikler');
                });
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
