import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_dashboard_responsive_ui_clone/style/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/calendar.svg',
            width: 20,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/ring.svg',
            width: 20,
          ),
        ),
        const SizedBox(width: 15),
        Row(
          children: const [
            CircleAvatar(
              radius: 17,
              backgroundColor: AppColors.iconGray,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1604904612715-47bf9d9bc670?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            ),
          ],
        )
      ],
    );
  }
}
