import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../widgets/Main_title_card.dart';
import '../widgets/mainCard_Widget.dart';
import '../widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          MainTitleCard(size: size),
          MainTitleCard(size: size),
        ],
      ),
    ));
  }
}
