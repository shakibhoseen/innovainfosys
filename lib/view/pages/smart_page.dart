import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/smart_page/smart_header.dart';
import 'package:small_home_application/res/design/smart_page/smart_middle.dart';
import 'package:small_home_application/res/my_colors.dart';

class SmartPage extends StatelessWidget {
  const SmartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: smartHomeDesign(),
          ),
        ),

      ],
    );
  }
}




