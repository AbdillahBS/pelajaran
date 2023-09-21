import 'package:flutter/material.dart';

void main() {
  runApp( tugas1());
}

class tugas1 extends StatelessWidget {
   tugas1({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Center(child: Text('Tugas 1')),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey.shade400,
                  height: 150,
                  width: 320,
                  child: Row(
                    children: [
                     Container(
                      color: Colors.red,
                      width: 320/2,
                      child: Column(
                        children: [
                          Text("NAMA",style: TextStyle(
                            fontSize: 20,
                          ),)
                        ],
                      ),
                     ),
                     Container(

                     ) 
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    
  }
}  