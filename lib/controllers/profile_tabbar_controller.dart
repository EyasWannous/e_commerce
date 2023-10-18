import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTabbarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController profiletabController;

  final List<Tab> myTabs = <Tab>[
    const Tab(child: Text('Wishlist', style: TextStyle(color: Colors.black))),
    const Tab(
        child: Text('Recently Viewed', style: TextStyle(color: Colors.black))),
  ];
}
