import 'package:conversordemoedas/home/model/home_model.dart';
// import 'package:conversordemoedas/home/utils/url.dart';
import 'package:dio/dio.dart';

class Api{
  Future<ApiModel> fetchData() async{
    
    try{
      final reponse = await Dio().get('https://free.currconv.com/api/v7/convert?q=USD_BRL&compact=ultra&apiKey=chave para api');
      if(reponse.statusCode ==200){
        return ApiModel.fromJson(reponse.data);
      }
      
    }catch(e){
      print(e.toString());

    }
     return null;
    
    
  }
}