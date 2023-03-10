import 'package:flutter/material.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {Key? key, required this.imageList, this.angle = 0, required this.margin})
      : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
