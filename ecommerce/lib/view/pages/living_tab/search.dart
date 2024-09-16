// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/model/living_proc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 20),
      color: Color.fromARGB(255, 240, 239, 239),
      height: MediaQuery.of(context).size.height,
      child: Consumer<LivingProcess>(
        builder: (context, value, child) {
          return ListView.builder(
              itemCount: value.showSearchResult.length,
              itemBuilder: (context, index) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'searchcard',
                          arguments: value.showSearchResult[index]);
                    },
                    child: ListTile(
                      leading:
                          Image.asset(value.showSearchResult[index].imgPath),
                      title: Text(value.showSearchResult[index].name),
                      subtitle: Text(
                          'Price : ${value.showSearchResult[index].price} | Count : ${value.showSearchResult[index].count}'),
                    ),
                  ),
                );
              });
        },
        // child:
      ),
    );
  }
}
