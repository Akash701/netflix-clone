import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcMvzTK3P4utQeyTN-LXqnSI0RVoqvqxT50J6jbX61_vBydTUS';

class SearchresultWidget extends StatelessWidget {
  const SearchresultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movies & TV"),
        khight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.5,
            children: List.generate(10, (index) {
              return const MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
            image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
