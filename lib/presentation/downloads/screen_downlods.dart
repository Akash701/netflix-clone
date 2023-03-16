import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/DownloadImageWidget.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final _widgetList = [
    const _SmartDownload(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        itemCount: _widgetList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return _widgetList[index];
        },
      ),
    );
  }
}

class _SmartDownload extends StatelessWidget {
  const _SmartDownload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidht,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidht,
        Text('Smart  Downloader'),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcMvzTK3P4utQeyTN-LXqnSI0RVoqvqxT50J6jbX61_vBydTUS',
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRZWGl8C-zqLB4UvcOSRb2GNrO40CgXzaRtHnKxUa-aB1p2rzkA',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7bNhpTIID9flag4wQK78f4TG_RGOrPrjlYGAPZeFqJhgn5g5j'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        khight,
        const Text(
          textAlign: TextAlign.center,
          "We will download a personal selection of\n movies and shows for you, so there's\n always something to watch on your\n device",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        khight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.37,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(left: 150),
                angle: 20 * pi / 180,
              ),
              DownloadImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 150),
                angle: -20 * pi / 180,
              ),
              DownloadImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(right: 0),
                // angle: -30 * pi / 180,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        khight,
        MaterialButton(
          color: kButtonWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
