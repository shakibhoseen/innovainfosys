import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/custom_stepper_progress.dart';
import 'package:small_home_application/res/component/custom_switch_button.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/homepage/home_middle.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/view_model/lamp_view_model.dart';

Widget header(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            ),
            Text('Back', style: Constant.popins_sm(color: Colors.white)),
          ],
        ),
      ),
      Text('Lamp',
          style: Constant.popins_changeable_size(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
      Container(),
    ],
  );
}

Widget backgroundAppBar(BuildContext context, LampViewModel lampViewModel) {

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: ShapeDecoration(
      shape: MyCustomShape(30),
      color: MyColors.main2Color,
      shadows: MyShadow.boxShadow5(),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 0,
          right: 30,
          child: SizedBox( height: 290, child: Image.asset(AssetsName.lamLightBgPng)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(65),
            Text(
              'Dining Room',
              style: Constant.popins_base(color: MyColors.white),
            ),
            addVerticalSpace(6),
            CustomSwitchButton(
              onChanged: (value) {

              },
              isSwitchOn: false,
            ),
            addVerticalSpace(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<LampViewModel>(builder: (context, value, child) {
                  return Text(
                    '${lampViewModel.getBrightness.round()}',
                    style: Constant.popins_changeable_size(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  );
                },),
                Text(
                  '%',
                  style: Constant.popins_changeable_size(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              'Brightness',
              style: Constant.popins_lg(color: Colors.white),
            ),
            addVerticalSpace(4),
            Text(
              'Intensity',
              style: Constant.popins_base(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),

            Row(
              children: [
                Image.asset(AssetsName.lamLightOffPng),
                Flexible(child: CustomStepperProgress(onChanged: (value){
                  print("lamp");
                  lampViewModel.setBrightness(value);
                  print("call");
                }, sliderValue: lampViewModel.getBrightness,)),
                Image.asset(AssetsName.lamLightOnPng),
              ],
            ),
            Divider(
              thickness: 0.4, color: MyColors.surface2Color.withOpacity(0.5),

            ),

            Text("Usage", style: Constant.popins_base(fontWeight: FontWeight.w600, color: Colors.white),),

            addVerticalSpace(4),
            usageInsideItem('Use Today', '50watt'),
            usageInsideItem('Use Week', '500watt'),
            usageInsideItem('Use Month', '5000watt'),
          ],
        ),
      ],
    ),
  );
}

Widget usageInsideItem(String title, String value){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: Constant.popins_sm( color: Colors.white),),
      Text(value, style: Constant.popins_lg(fontWeight: FontWeight.w600, color: Colors.white),),
    ],
  );
}