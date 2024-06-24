import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_styles.dart';
import '../../../constants/colors.dart';
import '../../home/presentation/home.dart';
import '../../orders/presentation/active_order.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final _loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Form(
        key: _loginKey,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: AppColors.greenColor,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Welcome!',
                        style: AppStyle.poppinsText(
                            fontWeight: FontWeight.w800,
                            size: 22,
                            color: AppColors.blackColor),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Please Key in your details to proceed',
                        style: AppStyle.poppinsText(
                            fontWeight: FontWeight.w300,
                            size: 16,
                            color: AppColors.blackColor),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Email',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w300,
                          size: 13,
                          color: AppColors.blackColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomInputWidget(
                      controller: _emailTextController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      'Password',
                      style: AppStyle.poppinsText(
                          fontWeight: FontWeight.w300,
                          size: 13,
                          color: AppColors.blackColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Obx(
                    //   () =>
                    CustomInputWidget(
                      controller: _passwordTextController,
                      obscureText: false,
                      onPressed: () {},
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: Icon(
                          // _authController.isObscured.value
                          //     ? Icons.visibility_off
                          // :
                          Icons.visibility,
                          color: AppColors.blackColor),
                    ),
                    // ),
                    const SizedBox(
                      height: 40,
                    ),
                    // Obx(
                    //   () =>

                    CustomButtonWidget(
                        buttonText: 'Login',

                        // isLoading: _authController.loggingIn.value,
                        onPressed: () async {
                          Get.to(() => HomeScreen());
                        }),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Text(
                          'Forgot password?',
                          style: AppStyle.poppinsText(
                              fontWeight: FontWeight.w300,
                              size: 14,
                              color: AppColors.blackColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //         child: Container(
                    //       color: AppColors.blackColor,
                    //       height: 1,
                    //     )),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'Or',
                    //       style: AppStyle.poppinsText(
                    //           fontWeight: FontWeight.w300, size: 12),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Expanded(
                    //         child: Container(
                    //       color: AppColors.greenColor,
                    //       height: 1,
                    //     )),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // Center(
                    //   child: Text(
                    //     'Dont have an account',
                    //     style: AppStyle.poppinsText(
                    //         fontWeight: FontWeight.w300, size: 12),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // CustomButtonWidget(
                    //     // isLoading: false,
                    //     buttonText: 'Sign up',
                    //     textColor: AppColors.blackColor,
                    //     // bgcolor: AppColors.whiteColor,
                    //     onPressed: () {
                    //       Get.to(() => HomeScreen());
                    //     })
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class CustomInputWidget extends StatelessWidget {
  final controller;
  final keyboardType;
  final hintText;
  final bool obscureText;
  final Icon? suffixIcon;

  final VoidCallback? onPressed;
  const CustomInputWidget({
    super.key,
    this.controller,
    this.keyboardType,
    this.hintText,
    required this.obscureText,
    this.suffixIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      style: AppStyle.poppinsText(
          fontWeight: FontWeight.w500, size: 14, color: AppColors.blackColor),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field Cannot be empty';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          suffixIcon: suffixIcon == null
              ? const SizedBox.shrink()
              : InkWell(onTap: onPressed, child: suffixIcon),
          isDense: true,
          border: InputBorder.none,
          enabled: true,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(0.3))),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(0.3))),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(0.3))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(0.3))),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.greyColor))),
    );
  }
}
