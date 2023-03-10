import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors.dart';

import '../../core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        kwidht,
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kWhiteColor,
          size: 30,
        ),
        kwidht,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kwidht
      ],
    );
  }
}
