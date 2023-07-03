import 'package:dana_x/common/global_styles.dart';
import 'package:flutter/material.dart';

import '../models/news.dart';

class FeaturedNewsCard extends StatelessWidget {
  final News data;
  const FeaturedNewsCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all( 5),
        margin: EdgeInsets.only(top: 10),
        height: 120,
        color: Colors.grey,
        width: size.width,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                        color: Theme.of(context).primaryColor,
                        child: Image.asset(
                          data.photo,
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.description,
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.fade,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        data.author,
                        style: GlobalStyles.titleHeader1(context),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        data.date,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
