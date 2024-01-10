import 'package:flutter/material.dart';
import '../constant.dart';
import '../widget/BookWidget.dart';
import '../models/bookModel.dart';
import '../widget/AppBar.dart';
import '../widget/WriterWidget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});
  static List<Book> Books = [
    Book(
        id: 1,
        name: "مغازه خودکشی",
        writer: "ژان تولی",
        url:
            "https://cdn.fidibo.com/phoenixpub/content/1a680bec-114f-4687-b602-1e359cf5d21e/2f0853cc-69d3-4510-a6e0-84b4d4bedf98.jpg?width=216",
        summary:
            "مغازه‌ی تواچ به مردم شهر برای نحوه‌ی خودکشی مشاوره می‌دهد و برایشان روش‌های مرگ را تضمین می‌کند. از افتخارات این مغازه این است که افراد معروفی چون مرلین مونرو، میشیما، ون گوگ و ... نیز از مشتریان این مغازه بودند. روال داستان تا ورود آلن به همین صورت است. آلن جوان‌ترین عضو این خانواده است. با ورود آلن، قصه به کل تغییر می‌کند و اتفاقات جدیدی رخ می‌دهد. عشق به زندگی. اما پایان داستان بسیار تعجب برانگیز و شوکه کننده است.",
        description:
            "مغازه‌ی خودکشی کتابی در ژانر کمدی سیاه است که داستان شهری را روایت می‌کند کنه در هیچ کجای داستان اسمی از آن برده نمی‌شود. در این شهر که درگیر تغییرات اقلیمی دچار بحران شده است، هیچ گلی نمی‌روید و هوا بسیار بد است. مردم به‌شدت افسرده هستند و برای زندگی کردن و تلاش کردن هیچ انگیزه‌ای ندارند. در همان شهر غم‌زده یک مغازه‌ای وجود دارد که اوضاع در آن خیلی هم بد نیست. مغازه‌ی خودکشی. یک خانواده‌ی پنج نفره که به صورت خانوادگی و اجدادی این مغازه را اداره می‌کنند. در این مغازه هر چیزی که به کردم برای خودکشی کمک کند به فروش می‌رسد. هر چیزی مانند سم، طناب و هر چیز دیگه‌ای که به مرگ ختم شود. این مغازه یک شعار دارد، «اگر در زندگی موفق نبودید، حداقل مرگ موفقی داشته باشید.»",
        category: ['طنز', 'رمان', 'دراما', 'تلخ', 'خارجی'],
        price: 18 - 000,
        like: 1450)
  ];

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: back2_color,
          endDrawer: Drawer(),
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Appbar(_scaffoldKey),
                  //! -----------------
                  //! پر فروش ترین ها
                  //! -----------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 21,
                      ),
                      Text("همه",
                          style: TextStyle(fontSize: 17, color: Colors.black)),
                      Spacer(),
                      Text("پر فروش ترین ها",
                          style: TextStyle(fontSize: 21, color: Colors.black)),
                      SizedBox(
                        width: 7,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemBuilder: (context, index) {
                      return BookWidget(homeScreen.Books[0], index);
                    },
                    itemCount: 10,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                  )),
                  SizedBox(
                    height: 20,
                  ),

                  //! ------------------
                  //! برترین نویسده ها
                  //! ------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 21,
                      ),
                      Text("همه",
                          style: TextStyle(fontSize: 17, color: Colors.black)),
                      Spacer(),
                      Text("برترین نویسنده ها",
                          style: TextStyle(fontSize: 21, color: Colors.black)),
                      SizedBox(
                        width: 7,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                            child: ListView.builder(
                          itemBuilder: (context, index) {
                            return WriterWidget();
                          },
                          itemCount: 10,
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
