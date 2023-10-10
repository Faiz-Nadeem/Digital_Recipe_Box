import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_project/category1.dart';
import 'package:flutter_project/category2.dart';
import 'package:flutter_project/category3.dart';
import 'package:flutter_project/category4.dart';
import 'package:flutter_project/category5.dart';
import 'package:flutter_project/receipediscriptionpage.dart';
import 'package:flutter_project/recipe.dart';

// Adding receipes dynamically
class category{
  final String image;
  final String names;
  category({
    required this.image,
    required this.names,
  });
}
class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  PageController pageController = PageController(viewportFraction: 0.9,);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 150;

// list of recipes
List<category> Category=[
  category(
    image: 'assets/images/s1.png', 
    names: 'Simple Chicken Based',
    ),
  category(
    image: 'assets/images/s2.png', 
    names: 'Without Egg Based',
   ),
  category(
    image: 'assets/images/s3.png', 
    names: 'Quick Recipes',
    ),
  category(
    image: 'assets/images/s4.png', 
    names: 'Fried Items',
      ),
  category(
    image: 'assets/images/s5.png', 
    names: 'Garlic Based',
    ),
];
  
//List<String> categoryRoutes= ['category1','category2', 'category3', 'category4', 'category5'];
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

// Slider section

        Container(
          height: 230,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),

// Slider dots

        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: const  Color(0xFFAFBD5E),
            size: const Size.square(6.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

        const SizedBox(height: 15,),

// Popular items

        Container(
          margin: const EdgeInsets.only(left: 6),
          child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,  //align the items according to column and main deals with row               
            children: [
              Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'FontMain',),),
              SizedBox(width: 20,),
              Text('Food Pairing',style: TextStyle(color: Colors.grey,fontSize: 12,height: 1.6,),),
            ],
          ),
        ),
        const SizedBox(height: 10,),

// List of food and images

   ListView.builder(
     physics: const NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     itemCount: recipes.length,
     itemBuilder: (context, index) {
       return GestureDetector(
       onTap: (){
        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDescriptionPage(recipe: recipes[index]),
                  ),
                );
       },
         child: Container(
           margin: const EdgeInsets.fromLTRB(2, 5, 10, 5),
           child: Row(
             children: [
       
       // Image container
       
            Container(
         width: 105, 
         height: 105,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.amber,
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(recipes[index].image),
           ),
         ),
            ),
       
       // Text container
       
           Expanded(                   //wraping with the expanded widget to cover up the whole space  ofthe container
             child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: 0, right: 5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(recipes[index].name,style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 18,),),   //receipe name 
                const SizedBox(height: 9),
                Text(recipes[index].shortdetail,style: const TextStyle(color: Colors.grey,fontSize: 11,),),  
                const SizedBox(height: 10),
                
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                     const Icon(Icons.timer ,size: 17,),
                     const SizedBox(width: 4,),
                     Text(recipes[index].time,style: const TextStyle(color: Colors.grey,fontSize: 12,)),
                     const SizedBox(width: 22,),
                     Text(recipes[index].emogi,style: const TextStyle(fontSize: 16,)),
                      const SizedBox(width: 6,),
                     Text(recipes[index].level,style: const TextStyle(color: Colors.grey,fontSize: 12,)),

                    ],
                  ),
                  const SizedBox(height: 8),
              ],
            ),
            ),
          ),
          )
             ],
            ),
           ),
       );
    },
    ),
    ],
    );
  }

//Slider

  Widget _buildPageItem(int index) {
    return Stack(
      children: [

//Stack image

        Container(
          height: 175,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFFfcf3c0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Category[index].image),
            ),
          ),
        ),

//detail container

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            width: 250,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 2,
            ),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                BoxShadow(color: Colors.white, offset: Offset(5, 0)),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Category[index].names,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                  SizedBox(height: 10),
                  ElevatedButton(
                  onPressed: (){
                      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (index == 0) {
            return CategoryDescription1(recipe: recipes[0]);
          } else if (index == 1) {
            return CategoryDescription2(recipe: recipes[1]);
          } else if (index == 2) {
            return CategoryDescription3(recipe: recipes[2]);
          } else if (index == 3) {
            return CategoryDescription4(recipe: recipes[3]);
          } else if (index == 4) {
            return CategoryDescription5(recipe: recipes[4]);
          } else {
            // Handle the case where index is out of bounds or not expected
            return Container(); // Placeholder or error handling
          }
        },
      ),
    );
                  },
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 63, 39, 3)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),),
                  minimumSize: MaterialStateProperty.all<Size>(const Size(60, 40)),), 
                  child: const Text('click')
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
