import 'package:flutter/material.dart';
import 'package:regal_raiment/presentation/product/product_card_white.dart';

import '../product/product_card.dart';

class SeasonalCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      color: Color.fromARGB(255, 47, 45, 45),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'EXPLORE OUR WINTER COLLECTION',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(),
                  Text(
                    'STAY COZY THIS WINTER',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white ),
                  ),
                ],
              ),
              Spacer(),
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
          SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) => ProductCardWhite()))
        ],
      ),
    );
  }
}
