import 'package:flutter/material.dart';
import 'package:web_dashboard_responsive_ui_clone/config/responsive.dart';
import 'package:web_dashboard_responsive_ui_clone/config/size_config.dart';
import 'package:web_dashboard_responsive_ui_clone/data.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';
import 'package:web_dashboard_responsive_ui_clone/style/style.dart';

class TableHistory extends StatelessWidget {
  const TableHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage:
                        NetworkImage(transactionHistory[index]['avatar']!),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory[index]['label']!,
                  size: 16,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory[index]['amount']!,
                  size: 16,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory[index]['status']!,
                  size: 16,
                  color: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
