import 'package:flutter/material.dart';
import 'package:onbook/screens/homeScreen.dart';
import '../constant.dart';
import '../models/bookModel.dart';
import 'CategoryBook.dart';

Widget BookWidget(Book data, int index) {
  return Container(
    //   height: 345,
    width: 180,
    margin: EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1.5, color: Colors.black45),
        color: Color(0xFFFFFFFF)),
    child: Column(children: [
      Expanded(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: gray_color),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Image(
          image: NetworkImage(data.url),
          //fit: BoxFit.fill,
        ),
      )),
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "(" + data.like.toString() + ")",
                        style: TextStyle(fontSize: 14.5),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 255, 230, 0),
                        size: 16,
                      ),
                      //Spacer(),
                      Expanded(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            data.name,
                            style: TextStyle(
                                fontSize: 16.5, fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5,
                  ),
                  Text(
                    data.writer,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 2.5,
                  ),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        data.description.substring(0, 80) + " ...",
                        style: TextStyle(fontSize: 12.5),
                      )),
                  SizedBox(height: 3),
                  SizedBox(
                    width: double.infinity,
                    height: 20.5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            child: ListView.builder(
                          reverse: true,
                          itemBuilder: (context, index) {
                            return CategoryBook(homeScreen.Books[0], index);
                          },
                          itemCount: data.category.length,
                          scrollDirection: Axis.horizontal,
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 77.5,
                        padding: EdgeInsets.only(top: 3),
                        child: Row(
                          children: [
                            Text(
                              " تومان",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 11.5),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              data.price.toString() + ".000",
                              style: TextStyle(
                                  fontSize: 13.5, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 28,
                        width: 77.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26
                            //    border: Border.all(width: 1.75, color: main_color)
                            ),
                        child: Center(
                          child: Text(
                            "توضیحات",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    ]),
  );
}
