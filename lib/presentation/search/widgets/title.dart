import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  SearchTextTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
