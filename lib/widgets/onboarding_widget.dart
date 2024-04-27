
import 'package:flutter/material.dart';

// widget on boarding screen
Widget onBoarding({
  // img in boarding
  required String imgPath,
  // text in boarding
  required String title,
  // sub title in boarding screen
  required String subTitle,
}) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        // images
        Container(
          width: double.infinity,
          height: 400,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32)),
            child: Image.asset(
              imgPath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        // title
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        // description
        Text(
          subTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}