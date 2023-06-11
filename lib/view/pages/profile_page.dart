import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/custom_stepper_progress.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';
import 'package:small_home_application/utils/utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              'profile page',
              style: Constant.popins_changeable_size(
                  fontSize: 24, color: Colors.white),
              maxLines: 1,
            ),

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
        addVerticalSpace(50),

      ],
    ),
  );
}
