import 'package:flutter/material.dart';
import 'package:instagram_uts_talloka/color.dart';
import 'package:instagram_uts_talloka/stories_model.dart'; 

class Stories extends StatelessWidget {
  final stories = Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storiesData.length,
        itemBuilder: (context, index) {
          final story = storiesData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(story.profileImg)
                              ),
                        ),
                      ),
                      index == 0
                          ? const Positioned(
                              right: 10.0,
                              child: CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 10.0,
                                child: Icon(
                                  Icons.add,
                                  size: 18.0,
                                  color: Colors.white,
                                ),
                              ))
                          : Container()
                    ],
                  ),
                  Text(story.username, style: const TextStyle(fontSize: 12),)
              ],
            ),
          );
        } 
      ),
    );

  Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}
