import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/catalog');
            },
            icon: const Icon(Icons.add),
          ),
          const Chip(
            label: Text('0'),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your cart',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: ListView(
              children: const [],
            ),
          )
        ],
      ),
    );
  }
}
