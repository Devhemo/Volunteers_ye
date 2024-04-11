import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';
import 'package:Volunteers.ye/theme/custom_text_style.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/custom_elevated_button.dart';
import 'package:Volunteers.ye/widgets/custom_floating_text_field.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EnterPasswordScreen extends StatelessWidget {
  EnterPasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: Form(
                    key: _formKey,
                    child: Stack(children: [
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              left: 13.h, top: 25.v, right: 13.h),
                          child: Column(children: [
                            _buildEightyFive(context),
                            SizedBox(height: 15.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 18.h, right: 11.h),
                                child: CustomFloatingTextField(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        21.h, 1.v, 21.h, 35.v),
                                    controller: passwordController,
                                    labelText: "Email or Phone Number",
                                    labelStyle: theme.textTheme.bodySmall!,
                                    hintText: "Email or Phone Number",
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLock,
                                            height: 14.v,
                                            width: 18.h)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v))),
                            SizedBox(height: 20.v),
                            CustomElevatedButton(
                                onPressed: () {},
                                text: "Send",
                                margin: EdgeInsets.only(
                                  left: 18.h,
                                  right: 11.h,
                                ),
                                buttonTextStyle: CustomTextStyles
                                    .titleLargePrimaryContainerSemiBold),
                            SizedBox(height: 5.v)
                          ])),
                      Column(
                        children: [
                          Spacer(),
                          Opacity(
                            opacity: 0.8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgWaves,
                              height: 311.v,
                              width: 375.h,
                            ),
                          ),
                        ],
                      ),
                    ])))));
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 350.v,
            width: 320.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 29.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Forgot your password?",
                            style: theme.textTheme.titleLarge),
                        SizedBox(height: 5.v),
                        SizedBox(
                            width: 290.h,
                            child: Text(
                                "Enter your registered email below to receive password reset instruction",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.43)))
                      ]))),
              CustomImageView(
                imagePath: ImageConstant.imgUntitled2,
                height: 248.v,
                width: 226.h,
                alignment: Alignment.center,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 60.h, bottom: 300),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 234.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            SizedBox(width: 70),
                            Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                ),
                                child: Text("Forgot Password",
                                    style: theme.textTheme.titleMedium))
                          ])))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
