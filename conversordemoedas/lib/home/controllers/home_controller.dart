import 'package:conversordemoedas/home/model/home_model.dart';
import 'package:conversordemoedas/home/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  static Controller get to => Get.find();
  ApiModel data;
  var numero = 0.0.obs;
  var valortotal = 0.0.obs;
  var estaconvertendo = false.obs;
  
  void conversor() async{
    Api api = Api();
    estaconvertendo.value= true;
    final response = await api.fetchData();

    if(response == null){
      estaconvertendo.value = false;
      Get.snackbar(
        
        'Error',
        'Normomento não esta conseguindo conveter!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        
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
    valortotal.value  = numero.value * data.usdBrl;
    estaconvertendo.value = false;
    

  }
  }


  