import 'package:flutter/material.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_shadow.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/homepage/home_middle.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/model/home_room_model.dart';


final List<HomeRoomModel> roomItems = [
  HomeRoomModel(AssetsName.livingRoomHomePng, 5, 'Living Room', 19),
  HomeRoomModel(AssetsName.bedRoomHomePng, 8, 'Bed Room', 12),
  HomeRoomModel(AssetsName.kitchenRoomHomePng, 13, 'Kitchen Room', 24),
  HomeRoomModel(AssetsName.comodRoomHomePng, 12, 'Toilet Room', 12),
  HomeRoomModel(AssetsName.diningRoomHomePng, 5, 'Dinning Room', 16),
  HomeRoomModel(AssetsName.messRoomHomePng, 34, 'Bed Room 2', 18),
];

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
      Text('Room',
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

Widget roomHomeDesign() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Your Rooms',
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
              color: MyColors.white,
              boxShadow: MyShadow.boxShadow3(),
            ),
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.black,
            ),
          )
        ],
      ),
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: deviceActiveItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: .80,
        ),
        itemBuilder: (context, index) {
          return homeRoomItemDesign(roomItems[index]);
        },
      ),
      addVerticalSpace(9),

    ],
  );
}
