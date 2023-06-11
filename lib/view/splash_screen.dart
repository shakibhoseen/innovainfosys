
import 'package:flutter/material.dart';


import 'package:small_home_application/res/assets_name.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/splash_screen/splash_design.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/route/routes_name.dart';
import 'package:small_home_application/utils/utils.dart';


const String subTitle =
    "no matter how far you go,\n home will be your destination to return to.\n let's make your home comfortable";

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.main2Color,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [

                Positioned(
                  bottom: -20,
                  left: -20,
                  child: rectangleBox(),
                ),

                Positioned(
                  bottom: 20,
                  left: 80,
                  child: rectangleBox(height: 100, width: 100),
                ),

                Positioned(
                  bottom: 110,
                  left: -20,
                  child: rectangleBox(height: 90, width: 90),
                ),

                Positioned(
                  bottom: 160,
                  left: 80,
                  child: rectangleBox(),
                ),

                Positioned(
                  top: 2,
                  right: 80,
                  child: rectangleBox(),
                ),


                Positioned(
                  top: 140,
                  right: 40,
                  child: blurifyBox(isCircle: false),
                ),
                Positioned(
                  top: 110,
                  right: 75,
                  child: blurifyBox(isCircle: false),
                ),

                Positioned(
                  top: 180,

                  left: -10,
                  child: blurifyBox(isCircle: true, opacity: 0.2),
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //addVerticalSpace(10),
                        Text(
                          'Smart home',
                          style:
                              Constant.popins_lg(color: MyColors.surface2Color),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Home',
                              style: Constant.popins_changeable_size(
                                  fontSize: 28, color: MyColors.surface2Color),
                            ),
                            addVerticalSpace(10),
                            Text(
                              subTitle,
                              style: Constant.popins_sm(
                                  color: MyColors.surface2Color),
                            ),
                          ],
                        ),
                        Image.asset(AssetsName.splashBackgroundPng),
                        addVerticalSpace(6),
                        customSplashButton(
                          onPress: (){
                           // Utils.showFlashBarMessage("Welcome to Smart Home", FlasType.success, context);
                            Navigator.pushNamed(context, RoutesName.parentScreen);

                          }
                        ),
                        addVerticalSpace(4),
                        addVerticalSpace(4),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
