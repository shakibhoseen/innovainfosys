import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/line_chart_widgets.dart';
import 'package:small_home_application/utils/utils.dart';

Widget header(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Power Usage',
            style: Constant.popins_changeable_size(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
            maxLines: 1,
          ),
          InkWell(
            onTap: () {
              Utils.showFlashBarMessage(
                  'Power Usage home menu pressed', FlasType.success, context);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: MyShadow.boxShadow5(),
              ),
              child: SvgPicture.asset(
                AssetsName.filterIconImageSvg,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      addVerticalSpace(16),
      Row(
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
      chartScreen(height: 160, showType: ShowType.weekend, textColor: MyColors.white),
    ],
  );
}

Widget backgroundAppBar() {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: ShapeDecoration(
      shape: MyCustomShape(30),
      color: MyColors.main2Color,
      shadows: MyShadow.boxShadow5(),
    ),
    child: Column(
      children: [
        addVerticalSpace(85),


      ],
    ),
  );
}
