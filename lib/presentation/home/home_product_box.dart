import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:regal_raiment/presentation/product/product_card.dart';

class HomeProductBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Opacity(
              opacity: .4,
              child: Text(
                'LATEST ARTICLES',
                style: TextStyle(
                    fontSize: 20, color: Colors.grey, letterSpacing: 4),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'DISCOVER OUR',
                          style: TextStyle(
                              color: Colors.orange, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(),
                        Text(
                          'NEW OUTERWEAR COLLECTION',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 40))),
                      onPressed: () {},
                      child: Text(
                        'MORE',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ))
                ],
              ),

              // SizedBox(
              //   height: 5,
              // ),
              // Text('Some thing descriptive comes her'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 290,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (_, index) => ProductCard()))
            ],
          ),
        ],
      ),
    );
  }
}
