// import 'package:conversordemoedas/home/model/home_model.dart';
// import 'package:conversordemoedas/home/utils/url.dart';

import 'package:conversordemoedas/home/model/Listademoeda_model.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

class Api{
  Future<ApiModel?> fetchData( String? moeda) async{
    
    try{
      // final reponse = await Dio().get('https://free.currconv.com/api/v7/convert?q=USD_BRL&compact=ultra&apiKey=chave para api');
      final reponse = await Dio().get('https://economia.awesomeapi.com.br/all/$moeda-BRl');
      if(reponse.statusCode ==200){
        return ApiModel.fromJson(reponse.data);
      }
      
    }catch(e){
      print(e.toString());

    }
     return null;
    
    
  }
}