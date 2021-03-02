import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid19_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home_screen/components/my_header.dart';
import 'components/prevention.dart';
import 'components/symptom_card.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
                textTop: "Get to know",
                textBottom: "About Covid-19",
                image: "assets/icons/coronadr.svg"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isAcive: true,
                      ),
                      SymptomsCard(
                          image: "assets/images/caugh.png", title: "Caugh"),
                      SymptomsCard(
                          image: "assets/images/fever.png", title: "Fever"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Prevention",
                    style: kTitleTextstyle,
                  ),
                  PreventCard(
                    content:
                        "Since the start of the coronavirus out break some places have fully embraced wearing facemasks",
                    title: "Wear face mask",
                    image: "assets/images/wear_mask.png",
                  ),
                  PreventCard(
                    content:
                    "Since the start of the coronavirus out break some places have fully embraced wearing facemasks",
                    title: "Wash your hands",
                    image: "assets/images/wash_hands.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
