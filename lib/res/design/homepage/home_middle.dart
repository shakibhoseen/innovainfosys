import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/model/device_active_model.dart';
import 'package:small_home_application/model/home_room_model.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/custom_switch_button.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/res/symbol.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/route/routes_name.dart';

final List<HomeRoomModel> roomItems = [
  HomeRoomModel(AssetsName.livingRoomHomePng, 5, 'Living Room', 19),
  HomeRoomModel(AssetsName.bedRoomHomePng, 8, 'Bed Room', 12),
  HomeRoomModel(AssetsName.kitchenRoomHomePng, 13, 'Kitchen Room', 24),
  HomeRoomModel(AssetsName.comodRoomHomePng, 12, 'Toilet Room', 12),
  HomeRoomModel(AssetsName.diningRoomHomePng, 5, 'Dinning Room', 16),
  HomeRoomModel(AssetsName.messRoomHomePng, 34, 'Bed Room 2', 18),
];

List<Widget> homePageRoomDesign(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Rooms',
            style: Constant.popins_xl(fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.roomScreen);
            },
            child: Text(
              'See All',
              style: Constant.popins_lg(
                  color: MyColors.main2Color, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    ),

    SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: roomItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
            child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.livingRoomScreen);
                },
                child: homeRoomItemDesign(roomItems[index])),
          );
        },
      ),
    ),
  ];
}

Widget homeRoomItemDesign(HomeRoomModel roomModel) {
  return AspectRatio(
    aspectRatio: 0.80,
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: MyShadow.boxShadow2(),
        color: MyColors.surface2Color,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              miniBadgeBox('${roomModel.temperature}$degreeCentiGrade'),
            ],
          ),
          addVerticalSpace(8),
          Image.asset(
            roomModel.imageAsset,
            semanticLabel: 'image',
            height: 90,
            width: 90,
          ),
          Text(
            roomModel.title,
            style: Constant.popins_xl(fontWeight: FontWeight.w600),
            maxLines: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              miniYellowBadgeBox('${roomModel.numberDevice}'),
              addHorizontalSpace(4),
              Text(
                'devices',
                style: Constant.popins_sm(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

/// active devices
final List<DeviceActiveModel> deviceActiveItems = [
  DeviceActiveModel("AC", "Kitchen", AssetsName.acImagePng, "Temperature",
      "14$degreeCentiGrade", false),
  DeviceActiveModel("Lamp", "Dining room", AssetsName.threeLampImagePng,
      "Color", "White", true),
  DeviceActiveModel("Lamp", "Bed room", AssetsName.threeLampImagePng, "Color",
      "Yellow", false),
  DeviceActiveModel("AC", "Living room", AssetsName.acImagePng, "Temperature",
      "19$degreeCentiGrade", false),
  DeviceActiveModel(
      "TV", "Bed room", AssetsName.tvnImagePng, "Channel", "TVN", false),
  DeviceActiveModel("AC", "Bed room", AssetsName.acImagePng, "Temperature",
      "12$degreeCentiGrade", false),
];

List<Widget> homePageActiveDesign(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Text(
                'Active',
                style: Constant.popins_xl(fontWeight: FontWeight.w600),
              ),
              addHorizontalSpace(2),
              miniBadgeBox('6'),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.deviceActiveScreen);
            },
            child: Text(
              'See All',
              style: Constant.popins_lg(
                  color: MyColors.main2Color, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    ),

    SizedBox(
      height: 175,
      child: ListView.builder(
        itemCount: roomItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
            child: GestureDetector(
              onTap: (){
                  Navigator.pushNamed(context, RoutesName.lampScreen);
              },
                child: homeActiveItemDesign(deviceActiveItems[index])),
          );
        },
      ),
    ),
  ];
}

Widget homeActiveItemDesign(DeviceActiveModel activeModel) {
  return SizedBox(
    width: 175,
    child: AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: MyShadow.boxShadow2(),
          color: MyColors.mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                activeModel.imageAsset,
                height: 80,
                width: 80,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                addVerticalSpace(20),
                Text(activeModel.unit, style: Constant.popins_sm(color: Colors.white), maxLines: 1,),
                Text(activeModel.value, style: Constant.popins_xl(color: Colors.white), maxLines: 1,),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text(activeModel.deviceName, style: Constant.popins_xl(color: Colors.white), maxLines: 1,),
                          Text(activeModel.roomName, style: Constant.popins_sm(color: Colors.white), maxLines: 1,),

                        ],
                      ),
                    ),
                    CustomSwitchButton(onChanged: (isSwitchOn){

                    }),
                  ],
                ),
              ],
            ),


          ],
        ),
      ),
    ),
  );
}
