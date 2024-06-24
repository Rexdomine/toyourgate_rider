import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tyg_rider/constants/app_styles.dart';
import 'package:get/get.dart';
import 'package:tyg_rider/features/orders/presentation/active_order.dart';
import 'package:tyg_rider/features/orders/presentation/order_screen.dart';
import '../../../constants/colors.dart';
import '../../profile/presentation/account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool onlineValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/map.png',
                fit: BoxFit.cover,
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.4,
                minChildSize: 0.3,
                maxChildSize: 0.8,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: OrderConfirmationWidget()));
                }),
            Positioned(
              top: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AccountScreen());
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenColor.withOpacity(0.2)),
                          child: Center(
                            child: Icon(
                              Icons.person,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => OrderScreen());
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.greenColor.withOpacity(0.6)),
                          child: Center(
                            child: Icon(
                              Icons.history,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CupertinoSwitch(
                      value: onlineValue,
                      onChanged: (value) {
                        setState(() {
                          onlineValue = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    onlineValue ? 'online' : 'Offline',
                    style: AppStyle.poppinsText(
                        fontWeight: FontWeight.w500, size: 15),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
