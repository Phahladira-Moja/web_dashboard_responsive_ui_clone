import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_dashboard_responsive_ui_clone/config/size_config.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';
import 'package:web_dashboard_responsive_ui_clone/style/style.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  const InfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: 200),
        padding:
            const EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(icon, width: 35),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            PrimaryText(
              text: label,
              size: 16,
              color: AppColors.secondary,
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            PrimaryText(
              text: amount,
              size: 18,
              fontWeight: FontWeight.w700,
            ),
          ],
        ));
  }
}
