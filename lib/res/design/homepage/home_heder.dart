import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/model/weather_small_item.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

List<WeatherSmallItem> weatherSmallDetailsItems = [
  WeatherSmallItem(SvgPicture.asset(AssetsName.humidityIconImageSvg, height: 24, width: 24,), 'Humidity', '19', '%'),
  WeatherSmallItem(SvgPicture.asset(AssetsName.eyesIconImageSvg, height: 24, width: 24,), 'Visibility', '7', 'km'),
  WeatherSmallItem(SvgPicture.asset(AssetsName.windIconImageSvg, height: 24, width: 24,), 'NE Wind', '3', 'km/h'),
];

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning',
              style: Constant.popins_changeable_size(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              maxLines: 1,
            ),
            Text(
              'Hello there!',
              style: Constant.popins_base(),
              maxLines: 1,
            ),
          ],
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.black,
            size: 24,
          ),
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
    child: Stack(
      children: [
        Positioned(
          left: -25,
          top: 10,
          child: SvgPicture.asset(AssetsName.cloudImageSvg1),
        ),

        Positioned(
          right: -2,
          top: -4,
          child: SvgPicture.asset(AssetsName.cloudImageSvg2),
        ),

        hederWeatherBox(),

        Positioned(
          right: 10,
          bottom: 34,
          child: SvgPicture.asset(AssetsName.sunImageSvg),
        ),
      ],
    ),
  );
}

Widget hederWeatherBox() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        addVerticalSpace(100),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: MyColors.surface2Color,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AssetsName.sunBehindCloudImageSvg,
                    semanticsLabel: 'Sun behind the cloud',
                    height: 60,
                    width: 60,
                  ),
                  addHorizontalSpace(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "May 16, 2023 10:05 am",
                          style: Constant.popins_sm(),
                        ),

                        Text(
                          "Cloudy",
                          style:
                          Constant.popins_lg(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Jakarta, Indonesia",
                          style: Constant.popins_sm(),
                        ),
                        //custom radio button
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '19\u00B0',
                        style: Constant.popins_changeable_size(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'c',
                        style: Constant.popins_changeable_size(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),

              //horizontal space bar
              Divider(
                thickness: 0.7,
                color: MyColors.main2Color,
                height: 20,
              ),

              addVerticalSpace(10),

              SizedBox(
                  height: 72,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemCount: weatherSmallDetailsItems.length,
                    itemBuilder: (context, index) {
                      return weatherSmallItem(
                          weatherSmallDetailsItems[index].child,
                          weatherSmallDetailsItems[index].type,
                          weatherSmallDetailsItems[index].title,
                          weatherSmallDetailsItems[index].quantity);
                    },
                  )),
              addVerticalSpace(10),
            ],
          ),
        )
      ],
    ),
  );
}

Widget weatherSmallItem(
    Widget child, String type, String title, String quantity) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(255, 255, 255, 0.3),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.white,
                ),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: child,
                ),
              ),
              addHorizontalSpace(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    quantity,
                    style: Constant.popins_xl(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    type,
                    style: Constant.popins_sm(fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
          addVerticalSpace(1),
          Text(
            title,
            style: Constant.popins_sm(),
          ),
        ],
      ),
    ),
  );
}