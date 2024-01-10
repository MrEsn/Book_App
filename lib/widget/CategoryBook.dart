import 'package:flutter/material.dart';
import 'package:onbook/constant.dart';
import '../models/bookModel.dart';

Widget CategoryBook(Book data, int index) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 6,
    ),
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 5, bottom: 0.25),
    child: Text(
      //"#" +
      data.category[index] + "#",
      style: TextStyle(
        fontSize: 10,
        color: Color.fromARGB(255, 255, 255, 255),
        //fontWeight: FontWeight.bold
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        // color: Color(0xFF183912)
        color: main_color),
  );
}
