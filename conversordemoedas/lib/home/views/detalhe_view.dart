

import 'package:conversordemoedas/home/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DetalheView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bitcon",
            style: TextStyle(color: Colors.amber),
          ),
        ),
      drawer:  Drawer(
      child: DrawerWidget(),
    ),
    );
  }
}