import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_custom_shape.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/component/wave_clipper.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/usage_page/usage_middle.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/line_chart_widgets.dart';

import '../../res/design/usage_page/usage_header.dart';

class UsagePage extends StatelessWidget {
  const UsagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          collapsedHeight: 310,
          toolbarHeight: 250,
          shape: MyCustomShape(30),
          pinned: true,
          //expandedHeight: 310.0,
          title: header(context),

        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
              width: double.infinity,
              child: chartScreen(showType: ShowType.weekend)),
        ),

        SliverToBoxAdapter(
          child: UsageHomeDesign(),
        )


      ],
    );
  }
}

