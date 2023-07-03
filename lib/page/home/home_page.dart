import 'package:badges/badges.dart' as badges;
import 'package:dana_x/page/mock/fetch.dart';
import 'package:dana_x/router.dart';
import 'package:dana_x/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/item.dart';
import '../../widget/product_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> products = fetchProduct().products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Trang chủ", actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          tooltip: "Tìm kiếm",
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: 0, end: 3),
          child: IconButton(
            onPressed: () {
              navigator!.pushNamed(RouterGenerator.cartPage);
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        )
      ]),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          primary: false,
          itemCount: products.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
             return ProductCard(item: products[index],);
          }),
    );
  }
}
