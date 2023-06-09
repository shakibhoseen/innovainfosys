import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/design/homepage/home_heder.dart';
import 'package:small_home_application/res/design/homepage/home_middle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: 150,
          toolbarHeight: 60,
          shape: MyCustomShape(30),
          pinned: true,
          expandedHeight: 310.0,
          title: header(),
          flexibleSpace: FlexibleSpaceBar(
            background: backgorundAppBar(),
          ),
        ),

        SliverToBoxAdapter(
          child: Column(
            children: [
              ...homePageRoomDesign(),
              ...homePageActiveDesign(context),
            ],
          )
        ),

      ],
    );
  }
}
