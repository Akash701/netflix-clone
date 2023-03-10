import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class VideListItem extends StatelessWidget {
  final int index;
  const VideListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool clicked = false;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left side
                CircleAvatar(
                  backgroundColor: kBlackColor.withOpacity(0.7),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {
                        clicked = true;
                      },
                      icon: clicked == false
                          ? const Icon(Icons.volume_off_rounded)
                          : const Icon(Icons.volume_up)),
                ),

                //Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        backgroundImage: const NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7bNhpTIID9flag4wQK78f4TG_RGOrPrjlYGAPZeFqJhgn5g5j'),
                        radius: 30,
                      ),
                    ),
                    VideoActionWidgets(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    VideoActionWidgets(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    VideoActionWidgets(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    VideoActionWidgets(
                      icon: Icons.play_circle_fill,
                      title: "Play",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidgets extends StatelessWidget {
  VideoActionWidgets({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kWhiteColor, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
