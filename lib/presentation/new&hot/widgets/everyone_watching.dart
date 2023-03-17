import 'package:flutter/material.dart';
import 'package:netflix/presentation/new&hot/widgets/video_widget.dart';

import '../../../core/constants.dart';
import '../../home/widgets/custome_button_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        const Text(
          "Train to Busan",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        khight20,
        const Text(
          "When a zombie virus pushes Korea into a state of emergency, those trapped on an express train to Busan must fight for their own survival.",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        khight50,
        VideoWidget(
          size: size,
          movieImage:
              'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eT9fTSTjsCCmdQJ62EpxvePGANc.jpg',
        ),
        khight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CuntomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kwidht,
            CuntomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kwidht,
            CuntomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
          ],
        )
      ],
    );
  }
}
