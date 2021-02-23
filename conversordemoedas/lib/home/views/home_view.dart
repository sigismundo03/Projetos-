import 'package:conversordemoedas/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import '../widgets/converso_widget.dart';
import '../widgets/drawer_widget.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  
  Controller controller = Get.put(Controller());

 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Converso de Moeda",
            style: TextStyle(color: Colors.amber),
            
          ),
        centerTitle: true,
      ),
    drawer: Drawer(
      
      
      child: DrawerWidget(),
    ),
    // body: ListView.builder(
    //     itemCount: nomes.length,
    //     itemBuilder: (context,index){
    //         return  GetX<Controller>(
    //           builder: ( snapshot) {
    //             return ConversoWidget(
    //               nomes[index]["nome"],
    //               (){ controller.conversor(nomes[index]["nomedamoeda"]);},
    //               snapshot.valortotal.value,
                
    //           );
    //           }
    //         );
    //     },    
      
    
    // ),

    body:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 260,
        width: 400,
        child: Card(
          elevation: 10,
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child:  GetX<Controller>(
                builder: (snpshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' USD Para BRL',
                        style: TextStyle(
                          // color: Colors.amber,
                        ),
                      
                      ),
                    ],
                  ),
                  Container(
                    child: TextFormField(
                      onChanged:controller.getNumero,
                      decoration: InputDecoration(
                      
                        hintText: "Digite o Valor",
                        border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(2)),
                         
                        )
                      
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 14,),
                    snpshot.isload.value ? Center(
                     child: CircularProgressIndicator(),
                   ) 
                   :  
                    RaisedButton(
                   child: Text('Converter',
                   style: TextStyle(color: Colors.black),
                   ),
                   color: Colors.blueAccent,
                   onPressed: (){
                     controller.conversor("USD");
                   },
                   
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // GetX<Controller>(
                      // : (valor) {
                          Text('Valor é = ${ snpshot.valortotal.value.toStringAsFixed(2).toString()}\$',
                           style: TextStyle( 
                             color: Colors.white
                             ,
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                          ),
                          ),
                        // }
                      // ),
                    ],
                  ),
                ],
              );
            },
          ),
          ),
        ),
      ),
    ),
      
    );
  }

  
  }
