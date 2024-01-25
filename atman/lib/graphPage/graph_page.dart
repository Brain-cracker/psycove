import 'package:atman_2/graphPage/Bar_graph/Last_year.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../models/models.dart';
import 'Bar_graph/Last6_month.dart';
import 'Bar_graph/Last_7.dart';
import 'Bar_graph/Total_perfm.dart';
import 'Bar_graph/last3_month.dart';
import 'Bar_graph/month_graph.dart';

class MyPerformence extends StatefulWidget {
  const MyPerformence({super.key});

  @override
  State<MyPerformence> createState() => _MyPerformenceState();
}

class _MyPerformenceState extends State<MyPerformence> {
  Map<DateTime, List<double>> _productionData = {
    DateTime(2024, 1, 18): [5, 3, 4, 3.5, 6, 4.5, 4],
    DateTime(2024, 1, 19): [3, 2, 6, 4.5, 4, 5, 3],
  };
  List<double> weeklyPerformence = [
    4.40,
    3.50,
    5.0,
    3.0,
    4,
    4.5,
    3,
  ];
  String _selectedItem = 'Last 7 Days';
  PageController _pageController = PageController();
  DateTime _selectedDate = DateTime(2024, 1, 18);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<double> selectedProduction = _productionData[_selectedDate] ?? [];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().main,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(170),
            child: Container(
                height: 160.h,
                decoration: ShapeDecoration(
                  color: AppColors().main,
                  shape: RoundedRectangleBorder(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: IconButton(
                            icon: SvgPicture.asset(
                              'assets/backA.svg', // Replace with your SVG file path
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // Handle button press
                            },
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 27.h,
                          child: Text(
                            'Profile',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        children: [
                          Container(
                            height: 63,
                            width: 63,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: Color(0xff938CC6)),
                            child: Icon(
                              Icons.calendar_month,
                              size: 27,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            children: [
                              Text("2023"),
                              Text(
                                "August",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                _selectDate(context);
                              },
                              icon: Icon(
                                Icons.expand_circle_down_rounded,
                                size: 24,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )
                  ],
                ))),
        body: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: AppColors().background,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(28), topLeft: Radius.circular(28))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Text(
                    "Performence",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Inter",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 250.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            interval: 1,
                            showTitles: true,
                            reservedSize: 42,
                            getTitlesWidget: (value, meta) {
                              String text = "";
                              switch (value.toInt()) {
                                case 0:
                                  text = 'Sun';
                                case 1:
                                  text = 'Mon';
                                case 2:
                                  text = 'Tue';
                                case 3:
                                  text = 'Wed';
                                case 4:
                                  text = 'Thur';
                                case 5:
                                  text = 'Fri';
                                case 6:
                                  text = 'Sat';
                                default:
                                  return Container();
                              }
                              return Text(
                                text,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w600),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            interval: 1,
                            showTitles: true,
                            reservedSize: 50,
                            getTitlesWidget: (value, meta) {
                              final Container con;
                              switch (value.toInt()) {
                                case 1:
                                  con = Container(
                                      height: 45,
                                      width: 45,
                                      child: Image.asset(
                                          "assets/graph_emoji/joyf.png"));
                                case 2:
                                  con = Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/graph_emoji/smilef.png"));
                                case 3:
                                  con = Container(
                                      height: 42,
                                      width: 42,
                                      child: Image.asset(
                                          "assets/graph_emoji/surprisedf.png"));
                                case 4:
                                  con = Container(
                                      height: 39,
                                      width: 39,
                                      child: Image.asset(
                                          "assets/graph_emoji/sadf.png"));
                                case 5:
                                  con = Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                          "assets/graph_emoji/fearf.png"));
                                case 6:
                                  con = Container(
                                      child: Image.asset(
                                          "assets/graph_emoji/angryf.png"));
                                default:
                                  return Container();
                              }

                              return con;
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(
                          show: true,
                          drawHorizontalLine: false,
                          drawVerticalLine: false,
                          getDrawingVerticalLine: (value) {
                            return FlLine(
                              color: Colors.grey,
                              strokeWidth: 0.8,
                            );
                          }),
                      minX: 0,
                      maxX: selectedProduction.length.toDouble() - 1,
                      minY: 0,
                      maxY: 6,
                      lineBarsData: [
                        LineChartBarData(
                          spots: List.generate(
                            selectedProduction.length,
                            (index) => FlSpot(
                                index.toDouble(), selectedProduction[index]),
                          ),
                          isCurved: true,
                          gradient: LinearGradient(
                              colors: [Color(0xffF10086), Color(0xff3F00F1)]),
                          color: Colors.blue,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) {
                              return FlDotCirclePainter(
                                radius: 6, // Increase the radius of the dot
                                color: Color(0xffF10086),
                                strokeWidth: 3,
                                strokeColor: Colors.white,
                              );
                            },
                          ),
                          barWidth: 5,
                          belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffF10086).withOpacity(0.80),
                                    Color(0xffFF8FCD).withOpacity(0.84)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(height: 250.h, child: _buildSelectedContainer()),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: DropdownButton<String>(
                    value: _selectedItem,
                    items: [
                      'Last 7 Days',
                      'Last Month',
                      'Last 3 Months',
                      'Last 6 months',
                      'Last year',
                      'Total Performence'
                    ].map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedItem = value ?? 'Last 7 days';
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColors().main, // Header background color
            hintColor: AppColors().main,
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: ColorScheme.light(primary: AppColors().main),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Widget _buildSelectedContainer() {
    switch (_selectedItem) {
      case 'Last 7 Days':
        return Container(
          margin: EdgeInsets.all(5),
          child: Center(
            child: Last7Days(),
          ),
        );
      case 'Last Month':
        return Container(
          child: Center(
            child: MonthGraph(),
          ),
        );
      case 'Last 3 Months':
        return Container(
          child: Center(child: Last3Month()),
        );
      case 'Last 6 months':
        return Container(
          child: Center(child: Last6Month()),
        );
      case 'Last year':
        return Container(
          child: Center(
            child: LastYear(),
          ),
        );
      case 'Total Performence':
        return Container(
          child: Center(
            child: TotalPerformance(),
          ),
        );
      default:
        return Container();
    }
  }
}
