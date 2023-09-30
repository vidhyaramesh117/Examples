import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Chart Screen'),
       ),
       body: Center(
          child: 
          Container(
              width: 300, // Specify the desired width
              height: 200, // Specify the desired height
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                  show: true,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                  drawVerticalLine: true,
                  drawHorizontalLine: true,
                ),
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(showTitles: true, reservedSize: 40),
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 20,
                    getTitles: (value) {
                      // Customize the X-axis labels here
                      switch (value.toInt()) {
                        case 0:
                          return 'Jan';
                        case 1:
                          return 'Feb';
                        // Add more labels as needed
                        default:
                          return '';
                      }
                    },
    ),
  ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(
        color: const Color(0xff37434d),
        width: 1,
      ),
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2, 1),
          FlSpot(4, 4),
          FlSpot(6, 2),
        ],
        isCurved: true,
        colors: [Colors.blue],
        dotData: FlDotData(
          show: true,
        ),
        belowBarData: BarAreaData(show: false),
      ),
    ],
    ),
  ),
)
            
        ),
  bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.search, title: 'Search'),
      TabItem(icon: Icons.favorite, title: 'Favorites'),
      TabItem(icon: Icons.person, title: 'Profile'),
    ],
    onTap: (int index) {
      // Handle navigation to different tabs here
      showToastMessage(index);
    },
  ),
    );
  }
  void showToastMessage(int tabIndex) {
  String message = '';

  switch (tabIndex) {
    case 0:
      message = 'Home Tab Selected';
      break;
    case 1:
      message = 'Search Tab Selected';
      break;
    case 2:
      message = 'Favorites Tab Selected';
      break;
    case 3:
      message = 'Profile Tab Selected';
      break;
    default:
      message = 'Unknown Tab';
  }

  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
  );
}
}
