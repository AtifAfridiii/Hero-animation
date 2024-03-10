import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Watch extends StatelessWidget {
  const Watch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            transitionOnUserGestures: true,
            tag: 'asset/it2.jpg',
            child: Image.asset('asset/it2.jpg',fit: BoxFit.cover,)),
            Column(
             
              children: [
                SizedBox(height: 51,),
             Align(
              alignment: Alignment.topLeft,
              child: Text('Watch',style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,color: Colors.red.shade500),)),
              SizedBox(height: 5,),
              Align(
              alignment: Alignment.topLeft,
              child: Text('\$700',style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold,color: Colors.white),)),
              ],
            )
        ],
      ),
    );
  }
}