import 'package:flutter/material.dart';
import 'package:web_dashboard_responsive_ui_clone/config/responsive.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';
import 'package:web_dashboard_responsive_ui_clone/style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              PrimaryText(
                text: 'Dashboard',
                size: 30,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Payment Updates',
                size: 16,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        const Spacer(),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 2,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                contentPadding: const EdgeInsets.only(left: 40, right: 5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.black,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: AppColors.secondary,
                  fontSize: 14,
                ),
              ),
            )),
      ],
    );
  }
}
