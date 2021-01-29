import 'package:conversordemoedas/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Converso de Moeda"),
        centerTitle: true,
      ),
    
    // body: ListView.builder(
    //     itemCount: 5,
    //     itemBuilder: (context,index){
    //         return ConversoWidget();
    //     },    
      
    
    // ),

    body:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 400,
        child: Card(
          elevation: 10,
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(' USD Para BRL'),
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
                  GetX<Controller>(
                  builder: (snapshot) {
                    return snapshot.estaconvertendo.value ? Center(
                       child: CircularProgressIndicator(
                         backgroundColor: Colors.white,
                       )
                     ) 
                     
                    :
                     
                    RaisedButton(
                     child:Text('Converter',
                     style: TextStyle(color: Colors.white),
                     ),
                     color: Colors.green,
                     onPressed: (){
                       controller.conversor();
                     },
                     
                    );
                  }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GetX<Controller>(
                      builder: (valor) {
                        return Text('Valor é = ${ valor.valortotal.value.toStringAsFixed(2).toString()}\$',
                         style: TextStyle( 
                           color: Colors.green
                           ,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                        ),
                        );
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
      
    );
  }

  
  }
