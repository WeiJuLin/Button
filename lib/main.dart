import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() =>runApp(MaterialApp(
  home:Home(),
));


class Home extends StatelessWidget{
  Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: Text('Button'),
      centerTitle: true,
  ),
  body:Center(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              padding: EdgeInsets.all(10.0),

            ),
            onPressed: (){
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                content: const Text('RaiseButton',textAlign: TextAlign.center,),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('click u');},
              child: Text('RaiseButton',style: TextStyle(fontSize: 25),),
          ),
         Text(''),

        TextButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            padding: EdgeInsets.all(10.0),
          ),
          onPressed: (){
            final snackBar = SnackBar(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.blue,
              content: const Text('FlatButton',textAlign: TextAlign.center,),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            print('click me');},
          child: Text('FlatButton',style: TextStyle(fontSize: 20),),

        ),
        Text(''),

          OutlinedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo,
              padding: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: (){
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                content: const Text('你按下SnackBar'),
                action: SnackBarAction(
                  label: 'Toast訊息',
                  textColor:Colors.white ,
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('SnackBar');},
            child: Text('你按下SnackBar',style: TextStyle(fontSize: 25),),

          ),
         Text(''),


        
        
          IconButton(
            onPressed: (){
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                content: const Text('IconButton',textAlign: TextAlign.center,),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon:Icon(Icons.ad_units_rounded,size: 40,color: Colors.blue,),
        ),
        Text(''),


        FloatingActionButton(
            onPressed: (){
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                content: const Text('FloatingActionButton',textAlign: TextAlign.center,),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Icon(Icons.ad_units_rounded,size: 40,color: Colors.white,),
        ),
        Text(''),

        ElevatedButton.icon(
            onPressed: (){
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.blue,
                content: const Text('ElevatedButton.icon',textAlign: TextAlign.center,),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon:Icon(Icons.ad_units_rounded,size: 20,color: Colors.white),
                label: Text('RaiseButton.icon'),
        ),
    ],
    ),
    ),
    );
  }
}
