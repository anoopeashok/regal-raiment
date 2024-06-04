import 'package:flutter/material.dart';
import 'package:regal_raiment/presentation/accounts/account_view.dart';
import 'package:regal_raiment/presentation/bag/bag_view.dart';
import 'package:regal_raiment/presentation/home/home_view.dart';
import 'package:regal_raiment/presentation/wishlist/wishlist_view.dart';

class HomeBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeBottomNavigation();
}

class _HomeBottomNavigation extends State<HomeBottomNavigation> {
  final _body = [
    HomeView(),
    AccountView(),
    WishListView(),
    BagView(),
  ];
  int _index = 0;
  void setIndex(val) => setState(() {
        _index = val;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setIndex(value);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(
                Icons.account_circle_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Bag',
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Wishlist',
              icon: Icon(
                Icons.shopping_basket_outlined,
              ),
            ),
          ]),
    );
  }
}
