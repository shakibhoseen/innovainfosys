import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/model/usage_home_model.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

final List<UsageHomeModel> usageItems =[
  UsageHomeModel('Lamp', 'Kitchen-Bedroom', 12, 1000, 8, -10, true),
];

Widget UsageHomeDesign(){
  return Column(
    children: [
      usageItemDesign(),
      usageItemDesign(),
    ],
  );
}

Widget usageItemDesign(){
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: MyColors.surface2Color,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(AssetsName.lightSmartImagePng, height: 40, width: 40,),
        ),
        addHorizontalSpace(8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lamp', style: Constant.popins_base(fontWeight: FontWeight.w600),),
              Text('Kitchen - Bedroom', style: Constant.popins_sm(),),
              Row(
                children: [
                  Text(
                    '8 Unit',
                    style: Constant.popins_sm(),
                  ),
                  addHorizontalSpace(8),
                  SizedBox(
                    height: 13,
                    child: customVerticalDivider(),
                  ),
                  addHorizontalSpace(8),
                  Text(
                    '12 Jam',
                    style: Constant.popins_sm(),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('1000 Kw/h', style: Constant.popins_base(fontWeight: FontWeight.w600),),

            Row(
              children: [
                SvgPicture.asset(AssetsName.upIconImageSvg),
                addHorizontalSpace(8),

                Text('-10.0%', style: Constant.popins_sm(),),
              ],
            ),
          ],
        )
      ],
    ),
  );
}