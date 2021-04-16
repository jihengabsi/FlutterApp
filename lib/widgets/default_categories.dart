import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SfCartesianChart(
          title: ChartTitle(
            text: "Car sales",
          ),
          primaryXAxis: CategoryAxis(title: AxisTitle(text: "Car Names")),
          primaryYAxis:
              NumericAxis(title: AxisTitle(text: "Sales in Millions")),
          legend: Legend(isVisible: true),
          series: <ChartSeries>[
            ColumnSeries<SalesData, String>(
              name: "Cars",
              dataSource: getColumnData(),
              xValueMapper: (SalesData sales, _) => sales.x,
              yValueMapper: (SalesData sales, _) => sales.y,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
              ),
            )
          ]),
    );
  }
}

class SalesData {
  String x;
  double y;

  SalesData(this.x, this.y);
}

dynamic getColumnData() {
  List<SalesData> columnData = <SalesData>[
    SalesData("BMX", 20),
    SalesData("Audi", 30),
    SalesData("Honda", 40),
    SalesData("Ferrari", 10),
  ];
  return columnData;
}
