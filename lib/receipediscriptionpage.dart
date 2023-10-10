import 'package:flutter/material.dart';//
import 'package:flutter_project/recipe.dart';
import 'package:flutter_project/recommended.dart';

// Recipe class (same as in recommended.dart)

class RecipeDescriptionPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDescriptionPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Description'),
         backgroundColor:  Color(0xFFAFBD5E),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            height: 200,
            width: 400,
            decoration: BoxDecoration(color: Colors.amber,
             image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(recipe.image),
              ),
            ),
           
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.circular(34),
                
                ),
              child: Padding(
              padding:EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display the recipe details, e.g., name, time, and description
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.name,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,fontFamily: 'FontMain'),
                        ),
                        SizedBox(height: 20),
                        Container(
                         child: Row(
                          children: [
                            Icon(Icons.timer, size: 20,color: Color.fromARGB(255, 63, 39, 3),),
                            SizedBox(width: 8,),
                            Text('Time: ${recipe.time}',style: TextStyle(fontSize: 12,fontFamily: 'FontMain',),),
                          ],
                         ),
                        ),
                        SizedBox(height: 20),
                         Container(
                          child: Row(children: [
                            Icon(Icons.food_bank,size: 20,color: Color.fromARGB(255, 63, 39, 3),),
                            SizedBox(width: 8,),
                           Text("Ingredients ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 63, 39, 3), fontFamily: 'FontMain'),),
            
                          ],),
                         ),
                        SizedBox(height: 10),
                        Text(
                          recipe.Ingredients,
                          style: TextStyle(fontSize: 12, fontFamily: 'FontMain'),
                        ),
                        
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.description,size: 20,color: Color.fromARGB(255, 63, 39, 3),),
                              SizedBox(width: 8,),
                              Text('Description:', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 63, 39, 3), fontFamily: 'FontMain'),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('${recipe.describe}',style: TextStyle(fontFamily: 'FontMain'),),
                        // Add more recipe details as needed
                      ],
                    ),
                  ),
                  // You can display the image here if needed
                ],
              ),
            ),
                  ),
          ),
          
        ],
      ),
    );
  }
}
