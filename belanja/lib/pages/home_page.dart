import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
// import 'package:belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
          name: 'Sugar', 
          price: 5000,
          img: 'images/Sugar.jpg',
          stok: 5,
          rating: 4.8),
    Item(
          name: 'Salt', 
          price: 2000,
          img: 'images/Salt.png',
          stok: 10,
          rating: 4.4),
  ];

  @override
  Widget build(BuildContext context){
    // return MaterialApp(
    //   routes: {
    //     ItemPage.routeName: (context) => const ItemPage(),
    //   },
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Shopping List'),
        ),
    body: Container(
      margin: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Padding(
                padding : const EdgeInsets.all(8),
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                          tag: 'productImage${item.name}',
                          child: AspectRatio(
                            aspectRatio:
                                1, // Rasio lebar-tinggi 1:1 untuk ukuran yang sama
                            child: Image.asset(item.img, fit: BoxFit.cover),
                          ),
                    // )
                    // Expanded(child: Text(item.name)),
                    // Expanded(
                    //   child: Text(
                    //     item.price.toString(),
                    //     textAlign: TextAlign.end,
                    //   ),
                    ),
                  ],
                ),
              )
            )
          );
        }
      ),
    )
    // )
    );
  }
}