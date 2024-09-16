// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.onTapCard,
  }) : super(key: key);
  final String imgUrl;
  final String title;
  final Function() onTapCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCard,
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: Card(
          //margin: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.fromLTRB(20, 0, 20, 4),
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Image.asset(
                imgUrl,
                fit: BoxFit.fill,
                height: 220,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                //width: MediaQuery.of(context).size.width,
                bottom: 0,

                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber.shade700,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
