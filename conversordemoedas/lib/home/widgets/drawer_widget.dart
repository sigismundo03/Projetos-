import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
        
          decoration: BoxDecoration(
            
             gradient: LinearGradient(
              colors: <Color> [
                Colors.amber,
                Colors.amberAccent,

              ],
            )

          ),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2017/12/29/03/17/image-3046639_960_720.png",
                      width: 230,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    
                  

                  ),
                ),
              ),
              Text("Criptomoedas",
                  style: TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
              
              )
            ],
          ),
          
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
              color: Colors.amber,  
              
            ),
            title: Text(
              'Conversor',
              style: TextStyle(color: Colors.amber,),
            
            ),
            trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),
            onTap: (){},


          ),
        ),

        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            title: Text(
              'Bitcoin',
              style: TextStyle(color: Colors.amber,),
            
            ),
            
            onTap: (){},
             trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),

          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            title: Text(
              'Ethereum',
              style: TextStyle(color: Colors.amber,),
            
            ),
            onTap: (){},
             trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),

          ),
        ),Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            title: Text(
              'Litecoin',
              style: TextStyle(color: Colors.amber,),
            
            ),
            onTap: (){},
             trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),

          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            title: Text(
              'Ripple',
              style: TextStyle(color: Colors.amber,),
            
            ),
             trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),
            onTap: (){},

          ),
        ),
        
      ],
      
    );
  }
}