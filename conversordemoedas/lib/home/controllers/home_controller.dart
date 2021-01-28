import 'package:conversordemoedas/home/model/home_model.dart';
import 'package:conversordemoedas/home/repository/home_repository.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  static Controller get to => Get.find();
  ApiModel data;
  
  void conversor() async{
    Api api = Api();

    final response = await api.fetchData();

    if(response == null){
      Get.snackbar(
        'Error',
        'Normomento não esta conseguindo conveter!'
      );
    } else{
      data = response;
      // update(this);
    }
  }

}