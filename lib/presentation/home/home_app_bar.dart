import 'package:flutter/material.dart';
import 'package:regal_raiment/presentation/home/home_search_bar.dart';

PreferredSizeWidget homeAppbarMobile() {
  return AppBar(
      title: Image.asset(
        'assets/logo/logo_no_padding.jpeg',
        height: 40,
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.notification_important_outlined))
      ],
      bottom: PreferredSize(
          child: HomeSearchBar(), preferredSize: Size(double.infinity, 60)));
}
