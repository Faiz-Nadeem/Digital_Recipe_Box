import 'package:flutter/material.dart';
class welcomepage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color(0xFFAFBD5E),
      body: Stack(
        children: [
         Image.asset('assets/images/7735062.png',fit: BoxFit.cover, width:double.infinity, height: double.infinity,),
          Center(
            child: Align(alignment: Alignment.center,
            child:FractionalTranslation(translation: Offset(0,-0.65),
             child: Column(
          mainAxisAlignment: MainAxisAlignment.end,        //deals with y-axis
          crossAxisAlignment: CrossAxisAlignment.center, //deal with x-axis
          children: [
           const Text('Its Cooking', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'FontMain' ),),
           const Text('Time', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'FontMain' ),),
           const SizedBox(height:10),
           ElevatedButton(
            onPressed:(){Navigator.pushNamed(context, '/signup');} , 
            child: Text('Get Started' ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 63, 39, 3)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
            ),
            )
          ],
        ),
           )
            ),
      
      )
        ],
      ),
      
    
    );
  }
}