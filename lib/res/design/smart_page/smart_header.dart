import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/utils.dart';

Widget header(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Smart Home',
        style: Constant.popins_changeable_size(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600),
        maxLines: 1,
      ),
      InkWell(
        onTap: (){
          Utils.showFlashBarMessage('smart home menu pressed', FlasType.success, context);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: MyShadow.boxShadow5(),
          ),
          child: SvgPicture.asset(AssetsName.filterIconImageSvg, height: 24, width: 24,),
        ),
      ),

    ],
  );
}


Widget backgroundAppBar() {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: ShapeDecoration(
      
      shape: MyCustomShape(30),
      color: MyColors.main2Color,
    ),
    child: Column(
      children: [
        addVerticalSpace(85),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: MyColors.surface2Color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Living Room', style: Constant.popins_lg(fontWeight: FontWeight.w600),),
              const Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.black,),
            ],
          ),
        )
      ],
    ),
  );
}

