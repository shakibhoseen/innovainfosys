import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';

class SmartPage extends StatelessWidget {
  const SmartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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

Widget backgorundAppBar() {
  return Container(
    decoration: ShapeDecoration(

      shape: MyCustomShape(30),
      color: MyColors.main2Color,
    ),
    child: Column(
      children: [
        SizedBox(height: 100,),
        Text(
          'i love you',
          style: Constant.popins_lg(),
        ),
        Text(
          'i love you',
          style: Constant.popins_lg(),
        ),
        Text(
          'i love you',
          style: Constant.popins_lg(),
        ),
      ],
    ),
  );
}
