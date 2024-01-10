import 'package:flutter/material.dart';

Widget Appbar(GlobalKey<ScaffoldState> key) {
  return Container(
    width: double.infinity,
    //  height: 50,
    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
    child: Column(
      children: [
        SizedBox(
          height: 2,
          width: double.infinity,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              Spacer(),
              Text(
                "Random Shit",
                style: TextStyle(color: Colors.black, fontSize: 22.5),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.black, size: 30),
                onPressed: () {
                  key.currentState!.openEndDrawer();
                },
              )
            ]),
      ],
    ),
  );
}
