import 'package:flutter/material.dart';

class ConversoWidget extends StatelessWidget {
    final String texto;
    final   Function()  onPressed;
    final double value;
  

  const ConversoWidget( this.texto, this.onPressed, this.value);
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
                  Text(texto,
                    style: TextStyle(color: Colors.white),
                  
                  ),
                ],
              ),
              Container(
                child: TextFormField(
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    
                    hintText: "Digite o Valor",
                    focusColor: Colors.amber,
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(2)),
                     
                    )
                  ),
                  
                ),
              ),
              RaisedButton(
               child: Text('Converter',
               style: TextStyle(color: Colors.black),
               ),
               color: Colors.blue,
               onPressed:  onPressed,
               
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Valor é = ${value.toStringAsFixed(2).toString()}\$',
                   style: TextStyle( 
                     color: Colors.white
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