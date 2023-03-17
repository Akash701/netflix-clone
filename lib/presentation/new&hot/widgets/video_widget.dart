import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import 'Coming_soon.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key, required this.size, required this.movieImage})
      : super(key: key);

  final Size size;
  final String movieImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.width * 00.6,
          width: double.infinity,
          // color: Colors.yellow,
          child: Image.network(
            movieImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: ValueListenableBuilder(
              valueListenable: newAndHotSound,
              builder: (context, index, _) {
                return CircleAvatar(
                  backgroundColor: kBlackColor.withOpacity(0.7),
                  radius: 20,
                  child: IconButton(
                      onPressed: () {
                        newAndHotSound.value == false
                            ? newAndHotSound.value = true
                            : newAndHotSound.value = false;
                      },
                      icon: newAndHotSound.value == false
                          ? const Icon(Icons.volume_off_rounded)
                          : const Icon(Icons.volume_up)),
                );
              }),
        ),
      ],
    );
  }
}
