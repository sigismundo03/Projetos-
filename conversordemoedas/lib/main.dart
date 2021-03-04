import 'package:conversordemoedas/home/routes/pages.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get_navigation/get_navigation.dart';

import 'home/routes/routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Conversor",
    getPages: Pages.routes,
    initialRoute:  Routes.HOME,
    theme: ThemeData.dark(
      
    ),

   
  ));
}
