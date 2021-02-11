import 'package:conversordemoedas/home/routes/routes.dart';
import 'package:conversordemoedas/home/views/home_view.dart';
import 'package:get/get.dart';

class Pages {

 static final routes = [

   GetPage(
    name: Routes.HOME,
    page: () => HomeView(),
    
  ),
   GetPage(
    name: Routes.DETALHE,
    page: () {},
    
  ),

 ];

}