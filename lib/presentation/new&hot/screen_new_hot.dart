import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/new&hot/widgets/Coming_soon.dart';
import 'package:netflix/presentation/new&hot/widgets/everyone_watching.dart';
import 'package:netflix/presentation/new&hot/widgets/video_widget.dart';

import '../../core/constants.dart';
import '../home/widgets/custome_button_widget.dart';
import '../widgets/app_bar_widget.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: kWhiteColor,
                size: 30,
              ),
              kwidht,
              Container(
                height: 10,
                width: 30,
                color: Colors.blue,
              ),
            ],
            bottom: TabBar(
              labelColor: kBlackColor,
              isScrollable: true,
              unselectedLabelColor: kWhiteColor,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everyone is watching',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ComingSoon();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: 10),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return EveryoneWatching(
                    size: size,
                  );
                },
                separatorBuilder: (context, index) {
                  return khight50;
                },
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}
