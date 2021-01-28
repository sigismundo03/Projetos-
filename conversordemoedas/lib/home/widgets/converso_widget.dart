import 'package:flutter/material.dart';

class ConversoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Text('USD Para BRL'),
                ],
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                  
                    hintText: "Digite o Valor",
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(2)),
                     
                    )
                  ),
                ),
              ),
              RaisedButton(
               child: Text('Converter',
               style: TextStyle(color: Colors.white),
               ),
               color: Colors.green,
               onPressed: (){

               },
               
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Valor é = 0',
                   style: TextStyle( 
                     color: Colors.green
                     ,
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
  }
}