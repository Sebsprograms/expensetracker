import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      name: 'Apple',
      amount: 5.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      name: 'Sausage',
      amount: 15.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      name: 'Truffle',
      amount: 500.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('bars'),
            ),
          ),
          Column(children: [
            ...transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text('\$${tx.amount.toString()}'),
                    ),
                    Column(
                      children: [
                        Text(tx.name),
                        Text(tx.date.toString()),
                      ],
                    )
                  ],
                ),
              );
            }),
          ]),
        ],
      ),
    );
  }
}
