import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

import '../../../core/constants.dart';

class SearchIdleWidgets extends StatelessWidget {
  const SearchIdleWidgets({Key? key}) : super(key: key);
  final imageUrl =
      'https://www.themoviedb.org/t/p/w250_and_h141_face/xZUZ9i6vVayjyhR1vRo9Bjku4h.jpg';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        SearchTextTitle(
          title: "Top Searches",
        ),
        khight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 20,
            separatorBuilder: (context, index) {
              return khight20;
            },
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    )),
                  ),
                  kwidht,
                  const Expanded(
                    child: Text(
                      'Lucifer',
                      style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  const Icon(
                    CupertinoIcons.play_circle,
                    color: kWhiteColor,
                    size: 50,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
