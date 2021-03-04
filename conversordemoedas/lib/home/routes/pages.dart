import 'package:conversordemoedas/home/routes/routes.dart';
import 'package:conversordemoedas/home/views/detalhe_view.dart';
import 'package:conversordemoedas/home/views/home_view.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

class Pages {

 static final routes = [

   GetPage(
    name: Routes.HOME,
    page: () => HomeView(),
    
  ),
   GetPage(
    name: Routes.DETALHE,
    page: () =>  DetalheView(),
    
  ),

 ];

}