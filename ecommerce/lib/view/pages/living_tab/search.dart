// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce/view/pages/living_tab/grid_page2.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataGrid2(
        category: category,
        room: 'Living Room',
      ),
    );
  }
}
