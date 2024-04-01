import 'package:flutter/material.dart';
import 'package:instagram_uts_talloka/color.dart';
import 'package:instagram_uts_talloka/timeline_view.dart';

class Nav extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading:
        const Icon(Icons.camera_alt_outlined, color: AppColors.primaryColor),
    title: const SizedBox(
        height: 35.0,
        child: Text(
          'Instagram',
          style:
              TextStyle(fontFamily: "Pacifico", color: AppColors.primaryColor),
        )),
    actions: const <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.send_outlined,
          color: AppColors.primaryColor,
        ),
      )
    ],
  );

  final bottomBar = Container(
          color: Colors.white,
          height: 62,
          alignment: Alignment.center,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.home_outlined,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: () {},
                ),
                const IconButton(
                  icon: Icon(
                    Icons.search,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.account_box_outlined,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        );

  Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: const InstaList(),
        bottomNavigationBar: bottomBar);
  }
}
