import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import '../widgets/converso_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converso de Moeda"),
        centerTitle: true,
      ),
    
    body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
            return ConversoWidget();
        },    
      
    
    ),
      
    );
  }

  
  }
