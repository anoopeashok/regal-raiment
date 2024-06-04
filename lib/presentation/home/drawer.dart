import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset('assets/logo/logo.png'),
          const SizedBox(height: 20,),
          ListTile(
            title: Text('Category'),
          ),
          ListTile(
            title: Text('About'),
          ),
        
        ],
      ),
    );
  }
}
