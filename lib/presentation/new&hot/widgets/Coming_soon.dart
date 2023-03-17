import 'package:flutter/material.dart';
import 'package:netflix/presentation/new&hot/widgets/video_widget.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custome_button_widget.dart';

ValueNotifier<bool> newAndHotSound = ValueNotifier(false);

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 15,
              ),
              Text(
                'FEB',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              VideoWidget(
                size: size,
                movieImage:
                    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/tCeGkM4paxJsweXv6uyrI8Bc2ZH.jpg",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "RRR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CuntomButtonWidget(
                        icon: Icons.notifications_none,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 18,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CuntomButtonWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        iconSize: 20,
                        textSize: 18,
                      ),
                      // CuntomButtonWidget(
                      //   icon: Icons.info_outline,
                      //   title: "Info",
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              khight,
              const Text(
                'Coming on Friday',
                style: TextStyle(fontSize: 15),
              ),
              khight,
              const Text(
                'NATU NATU',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              khight,
              const Text(
                "A fictional history of two legendary revolutionaries' journey away from home before they began fighting for their country in the 1920s.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
