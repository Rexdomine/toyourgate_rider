import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tyg_rider/constants/app_styles.dart';
import 'package:tyg_rider/constants/colors.dart';

class ActiveOrderScreen extends StatelessWidget {
  const ActiveOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) => Divider(
                color: AppColors.whiteColor,
              ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor.withOpacity(0.1)),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.blackColor)),
                                  child: Center(
                                    child: Text(
                                      'RD',
                                      style: AppStyle.poppinsText(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.greenColor,
                                          size: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rexdomine restaurant',
                                  style: AppStyle.poppinsText(
                                      fontWeight: FontWeight.w500,
                                      size: 13,
                                      color: AppColors.blackColor),
                                ),
                                Text(
                                  '4th street, abuja lokogoma',
                                  style: AppStyle.poppinsText(
                                      fontWeight: FontWeight.w400,
                                      size: 10,
                                      color: AppColors.greenColor),
                                ),
                                Text(
                                  '4th March, 2024',
                                  style: AppStyle.poppinsText(
                                      fontWeight: FontWeight.w400,
                                      size: 10,
                                      color: AppColors.greenColor),
                                )
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Text(
                            'Delivery Price',
                            style: AppStyle.poppinsText(
                                fontWeight: FontWeight.w600,
                                size: 14,
                                color: AppColors.blackColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'N2,300',
                                style: AppStyle.poppinsText(
                                    fontWeight: FontWeight.w300,
                                    size: 14,
                                    color: AppColors.blackColor),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.bottomSheet(OrderConfirmationWidget());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.greenColor
                                          .withOpacity(0.2)),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: AppColors.greenColor,
                                    size: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class OrderConfirmationWidget extends StatelessWidget {
  const OrderConfirmationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: AppColors.whiteColor),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rexdomine Restaurant',
            style: AppStyle.poppinsText(
                fontWeight: FontWeight.w500,
                size: 15,
                color: AppColors.blackColor),
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.greyColor),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.map,
                color: AppColors.greenColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '7th avenu gwarimpa',
                style: AppStyle.poppinsText(
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: AppColors.blackColor),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 1,
                color: AppColors.blackColor,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.timer,
                color: AppColors.greenColor,
              ),
              Text(
                '10am ',
                style: AppStyle.poppinsText(
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: AppColors.blackColor),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.greyColor.withOpacity(0.2)),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.money_outlined,
                  color: AppColors.greenColor,
                ),
                Text(
                  'N2,000',
                  style: AppStyle.poppinsText(
                      fontWeight: FontWeight.w500,
                      size: 16,
                      color: AppColors.blackColor),
                ),
                Spacer(),
                Text(
                  'Cash payment',
                  style: AppStyle.poppinsText(
                      fontWeight: FontWeight.w500,
                      size: 13,
                      color: AppColors.blackColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomButtonWidget(
            buttonText: 'Order Information',
            borderColor: AppColors.greenColor,
            buttonColor: AppColors.whiteColor,
            textColor: AppColors.greenColor,
            onPressed: () {
              Get.bottomSheet(OrderDetailModal());
            },
          ),
          SizedBox(
            height: 15,
          ),
          CustomButtonWidget(
            buttonText: 'Start Delivery',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class OrderDetailModal extends StatelessWidget {
  const OrderDetailModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: AppColors.whiteColor),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'Order Detail',
              style: AppStyle.poppinsText(
                  fontWeight: FontWeight.w600,
                  size: 15,
                  color: AppColors.greenColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.greyColor.withOpacity(0.2)),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weight',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w300,
                          size: 12,
                          color: AppColors.blackColor),
                    ),
                    Text(
                      '24KG',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w600,
                          size: 15,
                          color: AppColors.blackColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price per KG',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w300,
                          size: 12,
                          color: AppColors.blackColor),
                    ),
                    Text(
                      'N100',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w600,
                          size: 15,
                          color: AppColors.blackColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w300,
                          size: 12,
                          color: AppColors.blackColor),
                    ),
                    Text(
                      'N3,000',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w600,
                          size: 15,
                          color: AppColors.blackColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.buttonColor,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.greenColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: borderColor ?? AppColors.greenColor)),
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        child: Center(
          child: Text(
            buttonText,
            style: AppStyle.poppinsText(
                fontWeight: FontWeight.w700,
                size: 14,
                color: textColor ?? AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
