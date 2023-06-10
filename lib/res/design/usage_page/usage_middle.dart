import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/model/usage_home_model.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

final List<UsageHomeModel> usageItems = [
  UsageHomeModel('Lamp', 'Kitchen-Bedroom', AssetsName.lightSmartImagePng, 12,
      1000, 8, -10, false),
  UsageHomeModel('Air Conditioner', 'Kitchen-Bedroom',
      AssetsName.airSmartImagePng, 5, 1000, 18, -17, true),
  UsageHomeModel('Wireless Speaker', 'Bedroom',
      AssetsName.wireLessSpeakerSmartImagePng, 12, 1090, 8, -10, true),
  UsageHomeModel('Television', 'Livingroom', AssetsName.tvSmartImagePng, 7,
      1000, 10, -100, true),
  UsageHomeModel('Lamp', 'Kitchen-Bedroom', AssetsName.lightSmartImagePng, 12,
      1000, 8, -10, true),
];

Widget UsageHomeDesign() {
  return Column(
    children: [
      ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: usageItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: usageItemDesign(usageItems[index]),
          );
        },
      )
    ],
  );
}

Widget usageItemDesign(UsageHomeModel usageHomeModel) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: MyColors.surface2Color,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(
            usageHomeModel.imageAsset,
            height: 40,
            width: 40,
          ),
        ),
        addHorizontalSpace(8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                usageHomeModel.deviceName,
                style: Constant.popins_base(fontWeight: FontWeight.w600),
              ),
              Text(
                usageHomeModel.roomName,
                style: Constant.popins_sm(),
              ),
              Row(
                children: [
                  Text(
                    '${usageHomeModel.consumeEnergy} Unit',
                    style: Constant.popins_sm(),
                  ),
                  addHorizontalSpace(8),
                  SizedBox(
                    height: 13,
                    child: customVerticalDivider(),
                  ),
                  addHorizontalSpace(8),
                  Text(
                    '${usageHomeModel.jamValue} Jam',
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
            Text(
              '${usageHomeModel.powerOfEnergy} Kw/h',
              style: Constant.popins_base(fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                SvgPicture.asset(usageHomeModel.isIncrease? AssetsName.upIconImageSvg : AssetsName.downIconImageSvg),
                addHorizontalSpace(8),
                Text(
                  '${usageHomeModel.savePercent}%',
                  style: Constant.popins_sm(),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
