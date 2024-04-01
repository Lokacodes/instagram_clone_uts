import 'package:flutter/material.dart';
import 'package:instagram_uts_talloka/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: const Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading:  const Icon(Icons.camera_alt_outlined,color: Color.fromRGBO(137, 169, 83,100 )),
    title: const SizedBox(
        //TODO : ganti logo
        height: 35.0,
        child: Text('Instagram', style: TextStyle(fontFamily: "Pacifico", color: Color.fromRGBO(137, 169, 83, 100)),)),
    actions: const <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send_outlined, color: Color.fromRGBO(137, 169, 83, 100),),
      )
    ],
  );

  InstaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: const InstaBody(),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: BottomAppBar(
            child: Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                const IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}
