import 'package:flutter/material.dart';

import '../../constant.dart';


class SymptomsCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isAcive;
  const SymptomsCard({
    Key key,
    this.image,
    this.title,
    this.isAcive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            isAcive
                ? BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: kActiveShadowColor,
            )
                : BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: kShadowColor,
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 90,
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
