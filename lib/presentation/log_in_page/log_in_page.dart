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
class LogInPage extends StatefulWidget {
  const LogInPage({Key? key})
      : super(
          key: key,
        );

  @override
  LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage>
    with AutomaticKeepAliveClientMixin<LogInPage> {
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 20.v),
                    _buildSeventySix(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
          Padding(
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
        ],
      ),
    );
  }
}
