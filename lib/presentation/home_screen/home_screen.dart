import 'dart:math';

import 'package:Volunteers.ye/core/utils/rive_utils.dart';
import 'package:flutter/material.dart';

import 'package:Volunteers.ye/presentation/menu_screen/menu.dart';
import 'package:Volunteers.ye/presentation/menu_screen/menu_Bt.dart';
import 'package:Volunteers.ye/widgets/custom_search_view.dart';
import 'package:Volunteers.ye/core/app_export.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Column(
            children: [
              SizedBox(
                height: 279.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 186.h,
                        margin: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Browse our comprehensive list of upcoming events",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    CustomImageView(
                      margin: EdgeInsets.only(top: 14.h),
                      imagePath: ImageConstant.imgUntitled2,
                      height: 181.v,
                      width: 136.h,
                      alignment: Alignment.centerLeft,
                    ),
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
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 23.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Searsh",
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Recent Events",
                    style: CustomTextStyles.bodyLargeInterWhiteA700,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

onTapImgArrowLeft(BuildContext context) {
  Navigator.pop(context);
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scalAnimation;
  late SMIBool isSideBarClosed;
  bool isSideMenuClosed = true;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));
    scalAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: SweepGradient(
          center: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.9,
          ],
          colors: [
            Color.fromARGB(255, 2, 179, 255),
            Color.fromARGB(255, 253, 168, 9),
            Color.fromARGB(255, 58, 156, 255),
          ],
        )),
        child: Stack(children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: 288,
            left: isSideMenuClosed ? -288 : 0,
            height: MediaQuery.of(context).size.height,
            child: const menu(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(animation.value - 30 * animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(animation.value * 265, 0),
              child: Transform.scale(
                  scale: scalAnimation.value,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(isSideMenuClosed ? 0 : 24)),
                      child: HomeScreen())),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            top: 16,
            left: isSideMenuClosed ? 0 : 220,
            child: mene_bt(
              riveOnInit: (artboard) {
                StateMachineController controller = RiveUtils.getRiveController(
                    artboard,
                    stateMachineName: "switch");
                isSideBarClosed = controller.findSMI("toggleX") as SMIBool;
                isSideBarClosed.value = false;
              },
              press: () {
                isSideMenuClosed = isSideBarClosed.value;
                if (isSideMenuClosed) {
                  _animationController.reverse();
                } else {
                  _animationController.forward();
                }

                setState(() {
                  isSideBarClosed.value = !isSideBarClosed.value;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}
