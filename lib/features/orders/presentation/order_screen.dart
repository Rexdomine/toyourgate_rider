import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tyg_rider/constants/app_styles.dart';
import 'package:tyg_rider/constants/colors.dart';

import 'active_order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: Text(
            'Orders',
            style: AppStyle.poppinsText(
                fontWeight: FontWeight.w500,
                size: 14,
                color: AppColors.blackColor),
          ),
          bottom: TabBar(
            dividerColor: AppColors.whiteColor,
            unselectedLabelStyle: AppStyle.poppinsText(
                fontWeight: FontWeight.w400,
                size: 14,
                color: AppColors.blackColor.withOpacity(0.2)),
            labelStyle: AppStyle.poppinsText(
                fontWeight: FontWeight.w300,
                size: 14,
                color: AppColors.blackColor),
            tabs: [
              Tab(
                text: 'Active Orders',
              ),
              Tab(
                text: 'Available Orders',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ActiveOrderScreen(),
            ActiveOrderScreen(),
          ],
        ),
      ),
    );
  }
}
