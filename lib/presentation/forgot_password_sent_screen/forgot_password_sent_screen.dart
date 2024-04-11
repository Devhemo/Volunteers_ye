import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/app_bar/appbar_leading_image.dart';
import 'package:Volunteers.ye/widgets/app_bar/appbar_title.dart';
import 'package:Volunteers.ye/widgets/app_bar/custom_app_bar.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSentScreen extends StatelessWidget {
  const ForgotPasswordSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Stack(children: [
              Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 22.h, top: 115.v, right: 22.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 58.adaptSize,
                        width: 58.adaptSize),
                    SizedBox(height: 40.v),
                    Container(
                        width: 323.h,
                        margin: EdgeInsets.only(left: 4.h, right: 1.h),
                        child: Text(
                            "We have sent a password recover intructions to your email ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge!
                                .copyWith(height: 1.40))),
                    SizedBox(height: 10.v),
                    SizedBox(
                        width: 326.h,
                        child: Text(
                            "Did not recive the email? check you spam filter or resend",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
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
            ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 10.h, top: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "Forgot Password", margin: EdgeInsets.only(top: 18.v)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
