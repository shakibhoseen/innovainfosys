import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/homepage/home_middle.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/res/symbol.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/line_chart_widgets.dart';

Widget header(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
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
          Text('Living Room',
              style: Constant.popins_changeable_size(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      // wify header
      addVerticalSpace(10),
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: MyColors.surface2Color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            livingDeviceSmallItem(
                AssetsName.keyLivingRoomImageSvg, degreeCentiGrade, 'AC', '19'),
            customVerticalDivider(),
            livingDeviceSmallItem(
                AssetsName.lampLivingRoomImageSvg, '%', 'Light Lamp', '18'),
            customVerticalDivider(),
            livingDeviceSmallItem(
                AssetsName.wifyLivingRoomImageSvg, "Kb/s", 'WIFI', '10'),
          ],
        ),
      ),
    ],
  );
}

Widget backgorundAppBar() {
  return Container(
    decoration: ShapeDecoration(
      shape: MyCustomShape(30),
      color: MyColors.main2Color,
    ),
    child: Column(
      children: [
        addVerticalSpace(160),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Usage This Week',style: Constant.popins_base(fontWeight: FontWeight.w600, color: Colors.white)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('2500',style: Constant.popins_lg(fontWeight: FontWeight.w600, color: Colors.white)),
                  Text('Watt',style: Constant.popins_sm(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
        chartScreen(height: 160, showType: ShowType.day, textColor: MyColors.white),
      ],
    ),
  );
}

Widget livingHomeDesign() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Device',
                style: Constant.popins_xl(),
              ),
              addHorizontalSpace(2),
              miniBadgeBox('4'),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColors.mainColor,
            ),
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
      GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: deviceActiveItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return homeActiveItemDesign(deviceActiveItems[index]);
        },
      ),
      addVerticalSpace(9),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(18),
          ),
          child: const Text(
            'Turn Off All Devices',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}

Widget livingDeviceSmallItem(
    String assetName, String unit, String deviceName, String quantity) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        SvgPicture.asset(
          assetName,
        ),
        addVerticalSpace(1),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  quantity,
                  style: Constant.popins_xl(color: MyColors.main2Color),
                ),
                Text(
                  unit,
                  style: Constant.popins_base(
                      color: MyColors.main2Color, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            addHorizontalSpace(5),
            Text(
              deviceName,
              style: Constant.popins_sm(color: MyColors.main2Color),
            )
          ],
        ),
      ],
    ),
  );
}

Widget customVerticalDivider(){
  return const SizedBox(
    height: 32,
    child: VerticalDivider(
      thickness: 0.5,
      color: MyColors.main2Color,
      width: 1,
    ),
  );
}