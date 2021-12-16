import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_diabetes_app/screens/constants.dart';
import 'package:flutter_diabetes_app/widget/side_menu.dart';
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
  bool isEmptyText = false;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    TextEditingController _textController = TextEditingController();

    void _dailyWaterCalculation() {
      // if (_textController.text.isEmpty) {
      //   isEmptyText = true;
      // } else {
      personWeight = double.parse(_textController.text);
      setState(() {
        _dailyWater = personWeight * 0.03;
        water = _dailyWater
            .toStringAsFixed(2); //virgülden sonra iki basamak gösterir
      });
      //}
    }

    // @override
    // void dispose() {
    //   // Clean up the controller when the widget is disposed.
    //   _textController.dispose();
    //   super.dispose();
    // }

    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          toolbarHeight: isDesktop ? 0 : 56,
          title: Text(
            'Su Takibi',
            style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
          ),
          backgroundColor: isDesktop ? Colors.transparent : kDoubleLightColor,
          elevation: isDesktop ? 0 : 6,
          iconTheme: IconThemeData(
              color: isDesktop ? Colors.transparent : Colors.black),
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
                        width: _size.width * 0.4,
                        height: _size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: kLightColor.withOpacity(0.3)),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: _size.width * 0.04),
                          child: TextField(
                            controller: _textController,
                            keyboardType: TextInputType.number,
                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                              border: InputBorder.none,
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
                              vertical: _size.height * 0.015,
                              horizontal: _size.width * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kDoubleLightColor,
                          ),
                          child: Text('Hesapla'),
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
                    _dailyWater == 0.0 ? Text('') : Text(' $water litre', style: TextStyle(fontSize: 20),),
                  ],
                ),
                SizedBox(height: 10),
                new CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: new Text("100%"),
                  progressColor: Colors.green,
                ),
              ],
            ),
          ),
        ));
  }
}
