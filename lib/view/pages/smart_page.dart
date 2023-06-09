import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/smart_page/smart_header.dart';
import 'package:small_home_application/res/my_colors.dart';

class SmartPage extends StatelessWidget {
  const SmartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: 100,
          toolbarHeight: 50,
          shape: MyCustomShape(30),
          pinned: true,
          expandedHeight: 170.0,
          title: header(context),
          flexibleSpace: FlexibleSpaceBar(
            background: backgroundAppBar(),
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




