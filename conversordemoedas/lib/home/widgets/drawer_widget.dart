import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

// FontAwesomeIcons.dollarSign
class DrawerWidget extends StatelessWidget {
  final Color cor = Colors.amber;

  title(String name, IconData icons, Function onetap) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: cor)),
      ),
      child: ListTile(
        leading: FaIcon(
          icons,
          color: cor,
        ),
        title: Text(
          '$name',
          style: TextStyle(
            color: cor,
          ),
        ),
        trailing: Icon(
          Icons.arrow_right,
          color: cor,
        ),
        onTap: onetap as void Function()?,
      ),
    );
  }
  void navegacao (String name, String argument ){
       Get.back();
       Get.back();
       Get.toNamed(name, arguments: argument);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.amber,
                Colors.amberAccent,
              ],
            ),
            // color: cor,
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
              Text(
                "Criptomoedas",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
        title('Conversor', FontAwesomeIcons.dollarSign, () {
          navegacao("/","");
         
        }),
        title('Bitcoin', FontAwesomeIcons.btc, () {
          navegacao("/detalhe",'BTC');
         
        }),
        title('Ethereum', FontAwesomeIcons.ethereum, () {
          navegacao("/detalhe",'ETH');
         
        }),

        title('Litecoin', FontAwesomeIcons.liraSign, () {
          navegacao("/detalhe",'LTC');
        }),

        title('Ripple', FontAwesomeIcons.rupeeSign, () {
          navegacao("/detalhe",'XRP');
         
        }),
      ],
    );
  }
}
