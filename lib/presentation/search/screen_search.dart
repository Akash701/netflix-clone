import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/SearchIdleWidgets.dart';
import 'package:netflix/presentation/search/widgets/SearchResultWidget.dart';

import '../../core/colors.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: kWhiteColor),
              ),
              khight,
              // Expanded(
              //   child: SearchIdleWidgets(),
              // ),
              const Expanded(
                child: SearchresultWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
