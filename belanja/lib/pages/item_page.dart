import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Text(itemArgs.price.toString()),
      )
    );
  }
}