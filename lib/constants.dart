import 'package:flutter/material.dart';
import 'package:responsivedashboard/util/my_box.dart';
import 'package:responsivedashboard/util/my_tile.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  width: 250,
  child: Column(
    children: const [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text("D A S H B O A R D"),
      ),
    ],
  ),
);

class boxBody extends StatelessWidget {
  final double aspectr;
  final int crossaxisc;
  const boxBody({Key? key, required this.aspectr, required this.crossaxisc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: aspectr,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossaxisc),
                itemBuilder: (context, index) {
                  return MyBox();
                }),
          ),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return MyTile();
          },
        )),
      ],
    );
  }
}
