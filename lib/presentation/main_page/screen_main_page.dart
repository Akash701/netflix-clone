import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen_downlods.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_Nav.dart';
import 'package:netflix/presentation/new&hot/screen_new_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

import '../../core/colors.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  final _pages = [
    const ScreenHome(),
    const ScreenNewHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownload(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: backgroundColor,
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
