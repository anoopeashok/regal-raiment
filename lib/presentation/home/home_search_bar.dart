import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeSearchBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        height: 60,
        alignment: Alignment.centerLeft,
        child: SearchAnchor(
            viewElevation: 0,
            isFullScreen: false,
            viewBackgroundColor: Colors.grey,
            builder: (context, controller) => SearchBar(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                hintText: 'Search',
                trailing: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  )
                ],
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)))),
            suggestionsBuilder: (context, controller) =>
                List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {},
                  );
                })));
  }
}
