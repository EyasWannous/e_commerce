// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  // final SearchController searchController = Get.put(SearchController());
  final _searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController.textFieldSearchController,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          hoverColor: Colors.white,
          splashColor: Colors.white,
          icon: const Icon(Icons.search),
          onPressed: () {
            // Do search
          },
        ),
        suffixIcon: IconButton(
          hoverColor: Colors.white,
          splashColor: Colors.white,
          icon: const Icon(Icons.clear),
          onPressed: () {
            _searchController.textFieldSearchController.clear();
          },
        ),
        hintText: 'Search...',
        border: InputBorder.none,
      ),
    );
  }
}
