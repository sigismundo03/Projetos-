import 'package:conversordemoedas/home/model/home_model.dart';
import 'package:dio/dio.dart';

class Api{
  Future<ApiModel> fetchData() async{
    
    try{
      final reponse = await Dio().get('path');
      if(reponse.statusCode ==200){
        return ApiModel.fromJson(reponse.data);
      }
      
    }catch(e){
      print(e.toString());

    }
     return null;
    
    
  }
}