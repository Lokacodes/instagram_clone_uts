import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_uts_talloka/color.dart';
import 'package:instagram_uts_talloka/stories_view.dart';
import 'package:instagram_uts_talloka/post_model.dart';

class InstaList extends StatefulWidget {
  const InstaList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  bool isSavePressed = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          if (index == 0) {
            return SizedBox(height: deviceSize.height * 0.2, child: Stories());
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(post.profileImg)),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            post.username,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(fit: FlexFit.loose, child: Image.asset(post.postImg)),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(isPressed
                                ? Icons.favorite
                                : FontAwesomeIcons.heart),
                            color:
                                isPressed ? Colors.red : AppColors.primaryColor,
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.comment,
                                color: AppColors.primaryColor,
                              ),
                              Text(
                                "1.2k",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Icon(
                            FontAwesomeIcons.share,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(isSavePressed
                            ? FontAwesomeIcons.solidBookmark
                            : FontAwesomeIcons.bookmark),
                        color: isSavePressed
                            ? AppColors.primaryColor
                            : AppColors.primaryColor,
                        onPressed: () {
                          setState(() {
                            isSavePressed = !isSavePressed;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '${post.viewsAmount} views ',
                        style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      const TextSpan(
                        text: 'liked by ',
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextSpan(
                        text: "${post.liker} ",
                        style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      const TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextSpan(
                        text: '${post.otherLikers} others ',
                        style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/loka2.JPG")),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                )
              ],
            );
          }
        });
  }
}
