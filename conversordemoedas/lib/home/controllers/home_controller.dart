// import 'package:conversordemoedas/home/model/home_model.dart';
import 'package:conversordemoedas/home/model/Listademoeda_model.dart';
import 'package:conversordemoedas/home/repository/home_repository.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  static Controller get to => Get.find();
  ApiModel data;
  var numero = 0.0.obs;
  var valortotal = 0.0.obs;
  
  void conversor(String moeda) async{
    Api api = Api();

    final response = await api.fetchData(moeda);

    if(response == null){
      Get.snackbar(
        'Error',
        'Normomento não esta conseguindo conveter!'
      );
    } else{
      data = response;
      multiplica();

    }
  }
  void getNumero(String numer){
     numero.value = double.parse(numer);
      valortotal.value = 0.0;
    

  }


  void multiplica(){
    valortotal.value  = numero.value * double.parse(data.moeda.ask);
    

  }
  }


  