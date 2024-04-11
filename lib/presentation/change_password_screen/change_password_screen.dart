import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';
import 'package:Volunteers.ye/routes/app_routes.dart';
import 'package:Volunteers.ye/theme/custom_text_style.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/app_bar/appbar_leading_image.dart';
import 'package:Volunteers.ye/widgets/app_bar/appbar_title.dart';
import 'package:Volunteers.ye/widgets/app_bar/custom_app_bar.dart';
import 'package:Volunteers.ye/widgets/custom_elevated_button.dart';
import 'package:Volunteers.ye/widgets/custom_floating_text_field.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Stack(
              children: [
                SizedBox(
                    width: SizeUtils.width,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                            key: _formKey,
                            child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.only(
                                    left: 26.h, top: 57.v, right: 26.h),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      _buildPassword(context),
                                      SizedBox(height: 13.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 8.h),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context,
                                                  AppRoutes
                                                      .enterPasswordScreen);
                                            },
                                            child: Text("Forgot Password?",
                                                style: CustomTextStyles
                                                    .bodySmallMontserratCyanA400),
                                          )),
                                      SizedBox(height: 60.v),
                                      _buildNewpassword(context),
                                      SizedBox(height: 24.v),
                                      _buildConfirmpassword(context),
                                      SizedBox(height: 32.v),
                                      _buildChangePassword(context),
                                      SizedBox(height: 5.v),
                                    ]))))),
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
              ],
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Change Password",
        margin: EdgeInsets.only(top: 18.v),
      ),
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 18.v,
          ),
          onTap: () {
            onTapArrowLeft(context);
          }),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: CustomFloatingTextField(
            contentPadding: EdgeInsets.fromLTRB(21.h, -3.v, 21.h, 35.v),
            controller: passwordController,
            labelText: "Current Password",
            labelStyle: theme.textTheme.bodySmall!,
            hintText: "Current Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTrophy,
                    height: 23.v,
                    width: 18.h)),
            prefixConstraints: BoxConstraints(maxHeight: 48.v)));
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: CustomFloatingTextField(
            contentPadding: EdgeInsets.fromLTRB(21.h, -3.v, 21.h, 35.v),
            controller: newpasswordController,
            labelText: "New Password",
            labelStyle: theme.textTheme.bodySmall!,
            hintText: "New Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTrophy,
                    height: 23.v,
                    width: 18.h)),
            prefixConstraints: BoxConstraints(maxHeight: 48.v)));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: CustomFloatingTextField(
            contentPadding: EdgeInsets.fromLTRB(21.h, -3.v, 21.h, 35.v),
            controller: confirmpasswordController,
            labelText: "Confirm  Password",
            labelStyle: theme.textTheme.bodySmall!,
            hintText: "Confirm  Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTrophy,
                    height: 23.v,
                    width: 18.h)),
            prefixConstraints: BoxConstraints(maxHeight: 48.v)));
  }

  /// Section Widget
  Widget _buildChangePassword(BuildContext context) {
    return CustomElevatedButton(
        text: "Change Password", margin: EdgeInsets.only(right: 3.h));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

onTapImgArrowLeft(BuildContext context) {
  Navigator.pop(context);
}
