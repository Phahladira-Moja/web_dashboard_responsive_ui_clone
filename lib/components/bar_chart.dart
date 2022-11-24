import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard_responsive_ui_clone/config/responsive.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        gridData: FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [
            BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg)),
          ]),
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(
                toY: 30,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(
                toY: 70,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(
                toY: 20,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(
                toY: 90,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 7, barRods: [
            BarChartRodData(
                toY: 60,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 8, barRods: [
            BarChartRodData(
                toY: 90,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 9, barRods: [
            BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 10, barRods: [
            BarChartRodData(
                toY: 40,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
          BarChartGroupData(x: 11, barRods: [
            BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg))
          ]),
        ],
      ),
      swapAnimationDuration: const Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }
}
