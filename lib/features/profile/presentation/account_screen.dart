import 'package:flutter/material.dart';
import 'package:tyg_rider/constants/app_styles.dart';
import 'package:tyg_rider/constants/colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Welcome, Rider',
          style: AppStyle.poppinsText(
              fontWeight: FontWeight.w400,
              size: 14,
              color: AppColors.greenColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.logout_rounded,
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            ProfileTiles(
              icon: Icon(Icons.monetization_on),
              name: 'Balance',
              subname: 'N2,000',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.delivery_dining),
              name: 'Total delivered order',
              subname: '140',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.person),
              name: 'Settings',
              subname: '',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.perm_device_info_outlined),
              name: 'Percels',
              subname: '140',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.history),
              name: 'Percel history',
              subname: '',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.notifications),
              name: 'Notification',
              subname: '10',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.history_rounded),
              name: 'Order History',
              subname: '140',
            ),
            SizedBox(
              height: 10,
            ),
            ProfileTiles(
              icon: Icon(Icons.outbox_rounded),
              name: 'Order',
              subname: '140',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTiles extends StatelessWidget {
  final Icon icon;
  final String name;
  final String? subname;
  const ProfileTiles({
    super.key,
    required this.icon,
    required this.name,
    this.subname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.greyColor.withOpacity(0.2)),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    AppStyle.poppinsText(fontWeight: FontWeight.w500, size: 10),
              ),
              Text(
                subname ?? '',
                style:
                    AppStyle.poppinsText(fontWeight: FontWeight.w500, size: 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
