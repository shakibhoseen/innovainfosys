import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/design/lamp_screen/lamp_header.dart';
import 'package:small_home_application/res/design/lamp_screen/lamp_middle.dart';
import 'package:small_home_application/view_model/lamp_view_model.dart';


class LampScreen extends StatelessWidget {
  const LampScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lampViewModel = Provider.of<LampViewModel>(context, listen: true);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: 100,
            toolbarHeight: 60,
            shape: MyCustomShape(30),
            pinned: true,
            expandedHeight: 480.0,
            title: header(context),
            flexibleSpace: FlexibleSpaceBar(
              background: backgroundAppBar(context, lampViewModel),
            ),

          ),

          SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: lampDesign(),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
