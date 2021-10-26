import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
        ),
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Chip(
              label: Text('0'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select a pizza',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: ListView(
              children:
                  ['Margharita', 'Pepperoni', 'Diavola', 'Fabiola', 'Hawaii']
                      .map(
                        (pizza) => ListTile(
                          title: Text(pizza),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                      .toList(),
            ),
          )
        ],
      ),
    );
  }
}
