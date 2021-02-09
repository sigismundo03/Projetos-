import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'home/views/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Conversor",
    theme: ThemeData.dark(
      
    ),

    home: HomeView(),
  ));
}
