import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BagView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Bag'),),
      body: Column(
        children: [
          Expanded(child:ListView.builder(itemBuilder:(context,index)=>  BagItem()) ),
          ElevatedButton(onPressed:(){} , child: Text('Checkout'))

        ],
      ),
    );
  }
}

class BagItem extends StatefulWidget {
  const BagItem({super.key});

  @override
  State<BagItem> createState() => _BagItemState();
}

class _BagItemState extends State<BagItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Image.network(''),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          )
        ],
      ),
    );
  }
}
