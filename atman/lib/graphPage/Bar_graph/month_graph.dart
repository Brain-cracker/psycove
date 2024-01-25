import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../models/models.dart';

class MonthGraph extends StatefulWidget {
  const MonthGraph({super.key});

  @override
  State<MonthGraph> createState() => _MonthGraphState();
}
TextEditingController _monthController =TextEditingController();
class _MonthGraphState extends State<MonthGraph> {
  List<double> MonthlyPerformence =
     [5.40, 3.50, 5.0, 3.0, 6,];
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 190.h,
        child: BarChart(
          BarChartData(
            maxY: 6,
            minY: 0,
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              drawHorizontalLine: true,
            ),
            titlesData: FlTitlesData(
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false)
              ),
                topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)
                ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 42,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= 'Work \nGoals';
                      case 1:
                        text= 'Career\n Goal';
                      case 2:
                        text= 'Learning \nGoals';
                      case 3:
                        text= 'Family\n Goals';
                      case 4:
                        text= 'Self \n Goals';
                      default:
                        return Container();
                    }

                    return Text(text,style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600
                    ),);
                  },
                ),
              ),
              leftTitles:  AxisTitles(
                sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= '0';
                      case 1:
                        text= '4';
                      case 2:
                        text= '8';
                      case 3:
                        text= '12';
                      case 4:
                        text= '16';
                      case 5:
                        text= '20';
                      case 6:
                        text= '24';
                      case 7:
                        text= '28';
                      default:
                        return Container();
                    }

                    return Text(text,style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600
                    ),);
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 0,
                  color: Colors.grey,
                  strokeWidth: 2,
                ),
              ],
            ),
            groupsSpace: 30,
            barGroups: List.generate(
              MonthlyPerformence.length,
                  (index) => BarChartGroupData(
                x: index,
                barsSpace: 10,
                barRods: [
                  BarChartRodData(
                    toY: MonthlyPerformence[index],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffF10086),
                        Color(0xff3F00F1),
                      ],
                    ),
                    width: 12,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
