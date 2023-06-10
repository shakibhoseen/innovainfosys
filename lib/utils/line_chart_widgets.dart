import 'package:flutter/material.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
enum ShowType  {weekend, day}
final  weekendValue = ["", "Sun","Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
class LineChartWidgets extends StatelessWidget {
  final List<DataPoint> data;
  final type;
  final Color color;
  const LineChartWidgets(this.data, {super.key, this.type = ShowType.day, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        axisLabelFormatter: (axisLabelRenderArgs) {
          int index = axisLabelRenderArgs.value.toInt();
          index = index%8;
          return ChartAxisLabel(
              type==ShowType.day ?'${axisLabelRenderArgs.value.toInt()}am' : weekendValue[index], Constant.popins_xs(color: color));
        },

        minimum: 1,
        maximum: 7,
        interval: 1,
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 160,
        interval: 50,
        axisLabelFormatter: (axisLabelRenderArgs) {
          return ChartAxisLabel(
              '${axisLabelRenderArgs.value.toInt()}', Constant.popins_xs(color: color));
        },
      ),
      series: <ChartSeries>[
        LineSeries<DataPoint, double>(
          dataSource: data,
          xValueMapper: (DataPoint point, _) => point.time,
          yValueMapper: (DataPoint point, _) => point.value,
          markerSettings: MarkerSettings(isVisible: true),
        ),
      ],
    );
  }
}

Widget chartScreen({double height = 200, ShowType showType = ShowType.day, textColor = MyColors.textColor}) {
  // Define the data points
  final data = [
    DataPoint(1, 70),
    DataPoint(1.2, 80),
    DataPoint(1.3, 80),
    DataPoint(2, 100),
    DataPoint(2.1, 90),
    DataPoint(3, 50),
    DataPoint(3.4, 40),
    DataPoint(4, 80),
    DataPoint(5, 120),
    DataPoint(6, 90),
    DataPoint(7, 70),
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned(
            left: 8,
            child: Text(
              "KWH",
              style: Constant.popins_sm(fontWeight: FontWeight.w600, color: textColor),
            ),
          ),
          Positioned(
            bottom: 11,
            left: 8,
            child: Text(
              showType==ShowType.day ?"Time": "Day",
              style: Constant.popins_sm(fontWeight: FontWeight.w600, color: textColor),
            ),
          ),
          SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: LineChartWidgets(data, type: showType, color: textColor,),
            ),
          ),
        ],
      ),
    ),
  );
}

class DataPoint {
  final double time;
  final int value;

  DataPoint(this.time, this.value);
}
