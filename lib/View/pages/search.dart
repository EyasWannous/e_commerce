// ignore_for_file: use_key_in_widget_constructors

import '../common/search_field.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.zero),
            child: SearchField(),
          ),
          bottom: const TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.only(bottom: 10),
            // splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(child: Text('SHOSES', style: TextStyle(color: Colors.black))),
              Tab(
                  child: Text('SOMETHINGS',
                      style: TextStyle(color: Colors.black))),
              Tab(child: Text('MAJD', style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
