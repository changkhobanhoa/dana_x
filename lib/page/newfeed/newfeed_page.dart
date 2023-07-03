import 'package:dana_x/models/news.dart';
import 'package:dana_x/widget/widgets.dart';
import 'package:flutter/material.dart';

class NewfeedPage extends StatefulWidget {
  const NewfeedPage({Key? key}) : super(key: key);

  @override
  _NewfeedPageState createState() => _NewfeedPageState();
}

class _NewfeedPageState extends State<NewfeedPage> {
  List<News> newsList = [
    News(
      author: "tien",
      title: 'Tiêu đề tin tức 1',
      description: 'Nội dung tóm tắt tin tức 1 taoifjasdf adkfas',
      date: '01/07/2023',
      photo: 'assets/images/recycle.jpg',
    ),
    News(
      author: ":huy",
      title: 'Tiêu đề tin tức 2',
      description: 'Nội dung tóm tắt tin tức 2',
      date: '30/06/2023',
      photo: 'assets/images/recycle.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Bảng tin",
          automaticallyImplyLeading: true,
          fontStyle: 20,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit_square))
          ],
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: newsList.length,
          itemBuilder: (BuildContext context, int index) {
            return FeaturedNewsCard(
              data: newsList[index],
            );
          },
        ));
  }
}
