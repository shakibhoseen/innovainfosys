import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/design/living_room/living_room_header.dart';
class LivingScreenRoom extends StatelessWidget {
  const LivingScreenRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: 180,
            toolbarHeight: 130,
            shape: MyCustomShape(30),
            pinned: true,
            expandedHeight: 350.0,
            title: header(context),
            flexibleSpace: FlexibleSpaceBar(
              background: backgorundAppBar(),
            ),

          ),

          SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: livingHomeDesign(),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
