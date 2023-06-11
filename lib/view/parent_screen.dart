import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/icons/bottom_nav_icons.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/utils.dart';
import 'package:small_home_application/view/pages/home_page.dart';
import 'package:small_home_application/view/pages/profile_page.dart';
import 'package:small_home_application/view/pages/smart_page.dart';
import 'package:small_home_application/view/pages/usage_page.dart';
import 'package:small_home_application/view_model/bottom_nav_bar_view_model.dart';

class ParentScreen extends StatelessWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const HomePage(),
      const SmartPage(),
      const UsagePage(),
      const ProfilePage(),
    ];

    final bottomNavBarViewModel = Provider.of<BottomNavBarViewModel>(context);
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: MyColors.main2Color,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
        child: GNav(
          //backgroundColor: MyColors.main2Color,
          tabBackgroundColor: Colors.white,
          tabBorderRadius: 10,
          gap: 6,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          tabs: [
          GButton(
            icon: bottomNavBarViewModel.pageIndex==0? BottomNavIcons.home_fill :BottomNavIcons.home,
            text: 'Home',
            border: Border.all(color: Colors.white),
          ),
          GButton(
            icon: bottomNavBarViewModel.pageIndex==1? BottomNavIcons.net_fill :BottomNavIcons.net,
            text: 'Smart',
            border: Border.all(color: Colors.white),
          ),
          GButton(
            icon: bottomNavBarViewModel.pageIndex==2? BottomNavIcons.pie_fill :BottomNavIcons.pie,
            text: 'Usage',
            border: Border.all(color: Colors.white),
          ),
          GButton(
            icon: bottomNavBarViewModel.pageIndex==3? BottomNavIcons.user_fill :BottomNavIcons.user,
            text: 'Profile',
            border: Border.all(color: Colors.white),
          )
        ],
          onTabChange: (index){
             if(index==3){
               Utils.showFlashBarMessage('I have not found any screen that related to profile so disable this.', FlasType.error, context);
               return;
             }
             bottomNavBarViewModel.setPageIndex(index);
          },
        ),
      ),
      body: tabs[bottomNavBarViewModel.pageIndex],
    );
  }
}

