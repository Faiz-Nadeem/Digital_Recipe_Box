import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/category1.dart';
import 'package:flutter_project/firebase_options.dart';
import 'package:flutter_project/recommended.dart';
import 'package:flutter_project/welcome.dart';
import 'package:flutter_project/signup.dart';
import 'recipe.dart';
import 'category1.dart';
import 'category2.dart';
import 'category3.dart';
import 'category4.dart';
import 'category5.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Recipe Box',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => welcomepage(), // sb sy phly yh page open ho ga
        '/home': (context) => const MyHomePage(),
        '/signup': (context) =>  Signuppage(),
        '/category1': (context) =>  CategoryDescription1(recipe: recipes[0],),
        '/category2': (context) =>  CategoryDescription2(recipe: recipes[1],),
        '/category3': (context) =>  CategoryDescription3(recipe: recipes[2],),
        '/category4': (context) =>  CategoryDescription4(recipe: recipes[3],),
        '/category5': (context) =>  CategoryDescription5(recipe: recipes[4],),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Digital Recipe Box',
          style: TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold),
        ),
        backgroundColor:  Color(0xFFAFBD5E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// Main line
            const Text(
              'What would you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
              ),
            ),
            const Text(
              'like to cook?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
// TextFeild
           
            const SizedBox(
              height: 10,
            ),
// Recommended
            const Text(
              'Categories',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'FontMain',),
            ),
            const SizedBox(height: 15),
            const Expanded(
              child: SingleChildScrollView(
                child: Recommended(),
              )
               ),
     
          ],
        ),
      ),
     drawer: Drawer(
       child: ListView(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 6),
      children: <Widget>[
       
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Signuppage()));
          }, // Call the logout function when tapped
        ),
      ],
    ),
  ),
     );
  }
}
