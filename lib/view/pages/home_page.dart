import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: 100,
          toolbarHeight: 60,
          shape: MyCustomShape(30),
          pinned: true,
          expandedHeight: 290.0,
          title: header(),
          flexibleSpace: FlexibleSpaceBar(
            background: backgorundAppBar(),
          ),
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(80),
          //   child: ClipPath(
          //     clipper: WaveClipper(),
          //     child: Container(
          //       width: double.infinity,
          //         height: 60,
          //         color: Colors.green,
          //         child: Text("hey")),
          //   ),
          // ),
        ),
        SliverToBoxAdapter(
          child: ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: Colors.red,
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: const Text(
                "Wave clipper",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow1(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow2(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow3(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow4(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow5(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: MyShadow.boxShadow6(),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('index', textScaleFactor: 5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          addVerticalSpace(100),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: MyColors.backGroundApplicationColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/sun_behind_cloud.svg',
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
                              style: Constant.popins_lg(
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Jakarta, Indonesia",
                              style: Constant.popins_sm(),
                            ),
                            //May 16, 2023 10:05 am
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
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
