import 'package:dana_x/models/item.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Item item;
  const ProductCard({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
          ClipRRect(
          borderRadius:const  BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Image.asset(item.image,fit: BoxFit.cover,),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: const Text('Catégorie', textAlign: TextAlign.left),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child:   Text(item.unit,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: const Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_outline),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: const Text(
              'Description du produit qui peut faire un certain nombre de lignes alors autant lui laisser un peu de place',
              textAlign: TextAlign.left),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text(
                 "${item.price}",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  tooltip: 'Add to cart',
                  onPressed: () {},
                ),
              ],
            ))
      ],
    ));
  }
}