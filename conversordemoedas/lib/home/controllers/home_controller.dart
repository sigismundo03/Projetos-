// import 'package:conversordemoedas/home/model/home_model.dart';
import 'package:conversordemoedas/home/model/Listademoeda_model.dart';
import 'package:conversordemoedas/home/repository/home_repository.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  static Controller get to => Get.find();
  ApiModel data;
  var numero = 0.0.obs;
  var valortotal = 0.0.obs;
  var criptmoeda = 1.0.obs;
  var isload = false.obs;

  void _isload(){
     isload.value=! isload.value;
  }
  bool _notIscriptmoeda(String moeda){
    return (moeda != 'BTC' && moeda !='XRP' && moeda !='LTC' && moeda !='ETH');
  }
  
  Future<void> conversor(String moeda) async{
    Api api = Api();
    if(_notIscriptmoeda(moeda)){
       _isload();
    }
    final response = await api.fetchData(moeda);
    
    if(response == null){
        if(_notIscriptmoeda(moeda)){
        _isload();
    }
      Get.snackbar(
        'Error',
        'Normomento não esta conseguindo conveter!'
      );
    } else{
      if(_notIscriptmoeda(moeda)){
       _isload();
      }
      data = response;

      if(_notIscriptmoeda(moeda)){
         multiplica();
      }
     

    }
  }
  void getNumero(String numer){
     numero.value = double.parse(numer);
     limparmoedas();

  }
   void limparmoedas(){
      valortotal.value = 0.0;
   }

  void multiplica(){
    valortotal.value  = numero.value * double.parse(data.moeda.ask);
  }
    void valorCriptmoeda(){
    criptmoeda.value  = 1 * double.parse(data.moeda.ask);
  }
  }


  