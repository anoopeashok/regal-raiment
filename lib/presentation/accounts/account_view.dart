import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey Anoop'),
      ),
      body:CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
SizedBox(
  height: 60,
  child:   ElevatedButton(
    
    onPressed: () {}, child: Text('Orders')),
),
              ElevatedButton(onPressed: () {}, child: Text('Wishlist'))
          ],)
        ],
      ),
    );
  }
}
