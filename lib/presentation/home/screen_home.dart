import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/custome_button_widget.dart';
import 'package:netflix/presentation/home/widgets/number_cards.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import '../../core/constants.dart';
import '../widgets/Main_title_card.dart';
import '../widgets/mainCard_Widget.dart';
import '../widgets/main_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          if (direction == ScrollDirection.reverse) {
            scrollNotifier.value = false;
          } else if (direction == ScrollDirection.forward) {
            scrollNotifier.value = true;
          }
          return true;
        },
        child: ListView(
          children: [
            const BackgroundCard(),
            MainTitleCard(
              size: size,
              title: "Released in the past year",
            ),
            khight,
            MainTitleCard(
              size: size,
              title: "Trending Now",
            ),
            khight,
            NumberTitleCard(
              limitedSize: size.width * 0.6,
            ),
            khight,
            MainTitleCard(
              size: size,
              title: "Tense Dramas",
            ),
            khight,
            MainTitleCard(
              size: size,
              title: "South Indian Cinemas",
            ),
            khight,
          ],
        ),
      ),
    );
  }
}
