

import 'package:conversordemoedas/home/controllers/home_controller.dart';
import 'package:conversordemoedas/home/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../descricaodemoedas/descrescaomoeda.dart';

// ignore: must_be_immutable
class DetalheView extends StatelessWidget {
  Controller controller = Get.put(Controller());
 var descricao = Desscricaodemoedas.descricaodemoedas;
     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${Get.arguments}',
            style: TextStyle(color: Colors.amber),
          ),
        ),
      drawer:  Drawer(
      child: DrawerWidget(),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: GetX<Controller>(

         init: controller,
          initState: (_) async {
            await controller.conversor(Get.arguments);
              
            
            controller.valorCriptmoeda();
          },
                   
          builder: (snapshot) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Card(
                    elevation: 08,
                    child: Image.network("https://cdn.pixabay.com/photo/2018/05/17/21/26/cryptocurrency-3409725_960_720.jpg",
                      width: double.infinity,
                      height: 190,
                      fit: BoxFit.cover,

                    
                    ),
                  ),
                ),

                Card(
                  elevation: 5.0,
                  child: ListTile(
                    title: Text("${snapshot.criptmoeda.value}  R\$",
                     style: TextStyle(color: Colors.amber)
                    ),

                    subtitle: Text("REAIS )",
                     style: TextStyle(color: Colors.amber)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                 child: Text( descricao[Get.arguments]['texto'],
                  style: TextStyle(color: Colors.amber)
                )
                 
                ),
                 SizedBox(height: 20,),
                 Center(
                 child: Text(descricao[Get.arguments]['descricao'],
                  style: TextStyle(color: Colors.amber)
                )
                  
                ),
              ],
              
              
            );
          }
        ),
      ),
    ),
    );
  }
}