import 'package:Volunteers.ye/core/utils/image_constant.dart';
import 'package:Volunteers.ye/presentation/log_in_pageone_page/log_in_pageone_page.dart';
import 'package:Volunteers.ye/presentation/log_in_page/log_in_page.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
import 'package:Volunteers.ye/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:Volunteers.ye/core/utils/size_utils.dart';

class LogInPageTabContainerScreen extends StatefulWidget {
  const LogInPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  LogInPageTabContainerScreenState createState() =>
      LogInPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LogInPageTabContainerScreenState
    extends State<LogInPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            _buildSeventyFive(context),
            SizedBox(height: 5.v),
            _buildTabview(context),
            SizedBox(
                height: 550.v,
                child: TabBarView(
                    controller: tabviewController,
                    children: [LogInPageonePage(), LogInPage()]))
          ])),
    )));
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 222.v,
                  width: 153.h,
                  margin: EdgeInsets.only(top: 40.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUntitled2,
                        height: 261.v,
                        width: 207.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 70.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.topLeft,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        })
                  ])),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  height: 173.v,
                  width: 205.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse15,
                          height: 173.v,
                          width: 205.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse14,
                        height: 106.v,
                        width: 135.h,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ),
            ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 51.v,
        width: 325.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.h),
            border: Border.all(color: theme.colorScheme.primary, width: 2.h)),
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primaryContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.purpleA200,
            unselectedLabelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                color: theme.colorScheme.primary),
            tabs: [
              Tab(child: Text("Vounteers")),
              Tab(child: Text("Organization"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
