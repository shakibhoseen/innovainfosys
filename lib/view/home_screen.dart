import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/component/my_custom_painter.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

import '../res/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ScrollController _scrollController = ScrollController();
  // bool _isExpanded = true;

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(_scrollListener);
  // }

  // @override
  // void dispose() {
  //   _scrollController.removeListener(_scrollListener);
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  // void _scrollListener() {
  //   setState(() {
  //     _isExpanded = _scrollController.hasClients &&
  //         _scrollController.offset < (290 - kToolbarHeight);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 150,
              toolbarHeight: 100,
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
        ),
      ),
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
          addVerticalSpace(100),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: MyColors.backGroundApplicationColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/sun_behind_cloud.svg',
                      semanticsLabel: 'Sun behind the cloud',
                      height: 60,
                      width: 60,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
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
                  fontSize: 24, color: Colors.white),
              maxLines: 1,
            ),
            Text(
              'Hello there!',
              style: Constant.popins_base(),
              maxLines: 1,
            ),
            Text(
              'Hello there!',
              style: Constant.popins_base(),
              maxLines: 1,
            )
          ],
        ),
      ),
      IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
    ],
  );
}
