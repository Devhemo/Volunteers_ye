import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/theme/custom_button_style.dart';
import 'package:Volunteers.ye/theme/custom_text_style.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';
import 'package:Volunteers.ye/widgets/custom_elevated_button.dart';
import 'package:Volunteers.ye/widgets/custom_pin_code_text_field.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: 50, left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                              ]))),
                  SizedBox(height: 5.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 232.v),
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 299.v,
                                width: 256.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      margin: EdgeInsets.only(right: 25),
                                      imagePath: ImageConstant.imgUntitled2,
                                      height: 210.v,
                                      width: 1586.h,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 30),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "Your Code",
                                              style: theme
                                                  .textTheme.headlineMedium,
                                            ),
                                            SizedBox(height: 1.v),
                                            Text(
                                              "Code send to yor Email",
                                              maxLines: 1,
                                              style: CustomTextStyles
                                                  .titleSmallGray500,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 73.v),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h, right: 5),
                              child: CustomPinCodeTextField(
                                context: context,
                                onChanged: (value) {},
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Resend Code? ",
                                      style:
                                          CustomTextStyles.bodyMediumffa6a6a5,
                                    ),
                                    TextSpan(
                                        text: "Click here",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            print(
                                                "000000000000000000000000000000000000");
                                          }),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 25.v),
                            CustomElevatedButton(
                              height: 53.v,
                              width: 250.h,
                              text: "Verify",
                              buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                              buttonTextStyle: theme.textTheme.bodyLarge!,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Spacer(),
                Opacity(
                  opacity: 0.8,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgWaves,
                    height: 271.v,
                    width: 375.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

onTapImgArrowLeft(BuildContext context) {
  Navigator.pop(context);
}
