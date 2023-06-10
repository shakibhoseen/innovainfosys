import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/design/room_screen/room_header.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: 100,
            toolbarHeight: 60,
            shape: MyCustomShape(30),
            pinned: true,
            //expandedHeight: 310.0,
            title: header(context),
            // flexibleSpace: FlexibleSpaceBar(
            //   background: backgorundAppBar(),
            // ),

          ),

          SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: roomHomeDesign(),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
