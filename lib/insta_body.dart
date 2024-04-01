import 'package:flutter/material.dart';
import 'package:instagram_uts_talloka/insta_list.dart';

class InstaBody extends StatelessWidget {
  const InstaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: InstaList())
      ],
    );
  }
}
