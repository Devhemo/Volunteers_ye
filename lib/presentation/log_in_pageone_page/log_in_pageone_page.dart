import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/routes/app_routes.dart';
import 'package:Volunteers.ye/theme/custom_text_style.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/custom_floating_text_field.dart';
import 'package:Volunteers.ye/widgets/custom_elevated_button.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';

// ignore_for_file: must_be_immutable
class LogInPageonePage extends StatefulWidget {
  const LogInPageonePage({Key? key})
      : super(
          key: key,
        );

  @override
  LogInPageonePageState createState() => LogInPageonePageState();
}

class LogInPageonePageState extends State<LogInPageonePage>
    with AutomaticKeepAliveClientMixin<LogInPageonePage> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  void _Login() {
    if (email == 'mo' && password == '123') {
      Navigator.pushNamed(context, AppRoutes.home);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('خطأ'),
                content: Text("بريدك الالكتروني أو كلمة السر غير صحيحة"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Ok"))
                ],
              ));
    }
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  _buildEightyThree(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 24.h,
      ),
      child: Column(
        children: [
          CustomFloatingTextField(
            onChanged: (value) => setState(() {
              email = value;
            }),
            contentPadding: EdgeInsets.fromLTRB(21.h, -8.v, 21.h, 35.v),
            controller: passwordController,
            labelText: "Email",
            labelStyle: theme.textTheme.bodySmall!,
            hintText: "Email",
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 14.v,
                width: 18.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 46.v,
            ),
          ),
          SizedBox(height: 20.v),
          CustomFloatingTextField(
            onChanged: (value) => setState(() {
              password = value;
            }),
            contentPadding: EdgeInsets.fromLTRB(21.h, -8.v, 21.h, 35.v),
            controller: passwordController1,
            labelText: "Password",
            labelStyle: theme.textTheme.bodySmall!,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 23.v,
                width: 18.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "Login",
            onPressed: _Login,
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.enterPasswordScreen);
                },
                child: Text(
                  "Forgot Password?",
                  style: CustomTextStyles.bodySmallMontserratCyanA400,
                ),
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.v,
                        bottom: 8.v,
                      ),
                      child: SizedBox(
                        width: 82.h,
                        child: Divider(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "or sign in using",
                        style: CustomTextStyles.bodyMediumFigtreeBluegray400,
                      ),
                    ),
                    Opacity(
                      opacity: 0.9,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 12.v,
                          bottom: 8.v,
                        ),
                        child: SizedBox(
                          width: 82.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 59.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGooglePerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebookPerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTwitterPerspectiveMatte,
                  height: 43.v,
                  width: 41.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 36.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have account |",
                style: CustomTextStyles.bodySmallMontserratGray1006d,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "Register",
                  style: CustomTextStyles.bodySmallMontserratCyanA400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
