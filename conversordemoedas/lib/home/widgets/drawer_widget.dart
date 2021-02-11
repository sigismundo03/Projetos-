import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// FontAwesomeIcons.dollarSign
class DrawerWidget extends StatelessWidget {
 
 title( String name, IconData icons ){
    return Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color : Colors.amber)),
          ),
          child: ListTile(
            leading: FaIcon(icons,
             color: Colors.amber,
            
            ),
            title: Text(
              '$name',
              style: TextStyle(color: Colors.amber,),
            
            ),
            trailing: Icon(Icons.arrow_right,
             color: Colors.amber,

            ),
            onTap: (){},


          ),
        );
 }

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
        title('Conversor',FontAwesomeIcons.dollarSign),
        title('Bitcoin',FontAwesomeIcons.btc),
        title('Ethereum',FontAwesomeIcons.ethereum),
        title('Litecoin',FontAwesomeIcons.liraSign),
        title('Ripple',FontAwesomeIcons.rupeeSign),
        
        
      ],
      
    );
  }
}