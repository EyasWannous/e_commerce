// ignore_for_file: use_key_in_widget_constructors

import '../../../controllers/profile_tabbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarWithoutAppbar extends StatelessWidget {
  // final TabController _profiletabController = TabController(length: 2, vsync: this);
  // final MyTabController _tabx = Get.put(MyTabController());
  // final ProfileTabbarController profiletabbarcontroller =
  //     Get.put(ProfileTabbarController());
  // final ProfileTabbarController profiletabbarcontroller;
  // const TabbarWithoutAppbar(this.profiletabbarcontroller);

  @override
  Widget build(BuildContext context) {
    final ProfileTabbarController profiletabbarcontroller =
        Get.find<ProfileTabbarController>();
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: profiletabbarcontroller.profiletabController,
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsets.only(bottom: 10),
            tabs: profiletabbarcontroller.myTabs,
          ),
        ),
        Container(
          color: Colors.grey[300],
          child: TabBarView(
            controller: profiletabbarcontroller.profiletabController,
            children: profiletabbarcontroller.myTabs.map((Tab tab) {
              final String label = tab.text!.toLowerCase();
              return Center(
                child: Text(
                  'This is the $label tab',
                  style: const TextStyle(fontSize: 36),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
