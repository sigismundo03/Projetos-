

import 'package:conversordemoedas/home/controllers/home_controller.dart';
import 'package:conversordemoedas/home/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DetalheView extends StatelessWidget {
  Controller controller = Get.put(Controller());
  final  String texto = "Sigla: BTC\n"
                        "Tipo: Criptomoeda";
  final  String descricao = "O Bitcoin surgiu em 2008 como uma resposta à crise financeira,"
"com a ideia de substituir o dinheiro físico que usamos e, "
"principalmente, tirar a necessidade de intermediação dos bancos nas" 
"operações financeiras."

"A criptomoeda apareceu pela primeira vez em um artigo publicado por Satoshi "
"Nakamoto, um pseudônimo que até hoje não se sabe se é uma pessoa ou "
"um grupo de pessoas. O texto descrevia como funcionava esta moeda digital e"
"criava o sistema que posteriormente passou a ser chamado de “blockchain”," 
"que é como um livro-razão que registra todas as operações."

"Seu uso foi pensado para ser exatamente uma moeda digital," 
"usada para realizar compras e fazer transações de forma segura," 
"anônima e com rapidez. Apesar disso, diante de sua forte volatilidade e" 
"aumento de valor, se tornou um investimento de alto risco, "
"sendo considerados por muitos especialistas também uma reserva de valor," 
"como o ouro.";

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
                    title: Text("${snapshot.criptmoeda.value}",
                     style: TextStyle(color: Colors.amber)
                    ),

                    subtitle: Text("REAIS (BRL - R\$)",
                     style: TextStyle(color: Colors.amber)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                 child: Text(texto,
                  style: TextStyle(color: Colors.amber)
                )
                 
                ),
                 SizedBox(height: 20,),
                 Center(
                 child: Text(descricao,
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