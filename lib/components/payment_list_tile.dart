import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';
import 'package:web_dashboard_responsive_ui_clone/style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  const PaymentListTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(icon, width: 20),
      ),
      title: PrimaryText(
        text: label,
        size: 14,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PrimaryText(
            text: 'Successfully',
            size: 12,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: amount,
            size: 16,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
