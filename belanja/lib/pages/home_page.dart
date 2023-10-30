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
      rating: 4.8,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      img: 'images/Salt.png',
      stok: 10,
      rating: 4.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                // Perhatikan bahwa '/item' adalah nama rute yang Anda tuju.
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: 'productImage${item.name}',
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(item.img, fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              Text(
                                item.rating.toString(),
                                style: const TextStyle(
                                  color: Colors.amber,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Rp. ${item.price}',
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        'Stok: ${item.stok}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama: Abdullah Khafabi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'NIM: 2041720050',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
