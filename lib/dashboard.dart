import 'package:flutter/material.dart';
import 'package:web_dashboard_responsive_ui_clone/components/bar_chart.dart';
import 'package:web_dashboard_responsive_ui_clone/components/header.dart';
import 'package:web_dashboard_responsive_ui_clone/components/history_table.dart';
import 'package:web_dashboard_responsive_ui_clone/components/info_card.dart';
import 'package:web_dashboard_responsive_ui_clone/components/payment_detail_list.dart';
import 'package:web_dashboard_responsive_ui_clone/components/side_menu.dart';
import 'package:web_dashboard_responsive_ui_clone/config/responsive.dart';
import 'package:web_dashboard_responsive_ui_clone/style/style.dart';

import 'components/app_bar_action_items.dart';
import 'config/size_config.dart';
import 'style/colors.dart';

class Dashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  _drawerKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu, color: AppColors.black),
              ),
              actions: const [AppBarActionItems()],
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Responsive.isDesktop(context)
                ? const Expanded(
                    flex: 1,
                    child: SideMenu(),
                  )
                : const SizedBox.shrink(),
            Expanded(
              flex: 10,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(),
                      SizedBox(height: SizeConfig.blockSizeVertical * 4),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: const [
                            InfoCard(
                              icon: 'assets/credit-card.svg',
                              label: 'Transfer via \nCard number',
                              amount: '\$1200',
                            ),
                            InfoCard(
                              icon: 'assets/transfer.svg',
                              label: 'Transfer via \nOnline Banks',
                              amount: '\$150',
                            ),
                            InfoCard(
                              icon: 'assets/bank.svg',
                              label: 'Transfer via \nSame Bank',
                              amount: '\$1500',
                            ),
                            InfoCard(
                              icon: 'assets/invoice.svg',
                              label: 'Transfer to \nOther Bank',
                              amount: '\$1500',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: const [
                              PrimaryText(
                                text: 'Balance',
                                size: 16,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                text: '\$1500',
                                size: 30,
                                fontWeight: FontWeight.w800,
                              )
                            ],
                          ),
                          const PrimaryText(
                            text: 'Past 30 Days',
                            size: 16,
                            color: AppColors.secondary,
                          )
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 4),
                      const SizedBox(
                        height: 180,
                        child: BarChartComponent(),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          PrimaryText(
                            text: 'History',
                            size: 30,
                            color: AppColors.secondary,
                          ),
                          PrimaryText(
                            text: 'Transaction of last 6 months',
                            size: 30,
                            fontWeight: FontWeight.w800,
                          )
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical * 3),
                      const TableHistory(),
                      !Responsive.isDesktop(context)
                          ? const PaymentDetailList()
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ),
            Responsive.isDesktop(context)
                ? Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      height: SizeConfig.screenHeight,
                      color: AppColors.secondaryBg,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 30),
                        child: Column(
                          children: const [
                            AppBarActionItems(),
                            PaymentDetailList()
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
