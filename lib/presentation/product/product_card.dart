import 'package:flutter/material.dart';
import 'package:regal_raiment/shared/dimensions.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://thehouseofrare.com/cdn/shop/files/REACH-PASTEL-GREEN-02940HERO_1500x.jpg?v=1692437366',
            height: 180,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: Dimensions.size12,
          ),
          Text(
            'Half Sleeve T-Shirt',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimensions.size8,
          ),
          Text(
            '\$48',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.orange),
          ),
          SizedBox(
            height: Dimensions.size8,
          ),
          OutlinedButton(onPressed: () {}, child: Text('ADD TO CART',style: TextStyle(color: Colors.black,fontSize: 12),))
        ],
      ),
    );
  }
}
