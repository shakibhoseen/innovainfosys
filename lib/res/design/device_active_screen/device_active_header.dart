import 'package:flutter/material.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/homepage/home_middle.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

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
      Text('Devices Active',
          style: Constant.popins_changeable_size(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
      Container(
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black,),
          )),
    ],
  );
}

Widget deviceActiveHomeDesign() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Device Active',
                style: Constant.popins_xl(),
              ),
              addHorizontalSpace(2),
              miniBadgeBox('6'),
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
