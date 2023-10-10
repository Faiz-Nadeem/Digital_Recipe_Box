import 'package:flutter/material.dart';
import 'package:flutter_project/receipediscriptionpage.dart';
import 'package:flutter_project/recipe.dart';

class CategoryDescription5 extends StatelessWidget {
  final Recipe recipe;
  CategoryDescription5({Key? key, required this.recipe}) : super(key: key);
  List<int> recipeIndices = [1, 2, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Without Egg Based'),
        backgroundColor: Color(0xFFAFBD5E),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Row(
            children: [
              // List of indices to display specific recipes
              Expanded(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: recipeIndices.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final recipeIndex = recipeIndices[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDescriptionPage(recipe: recipes[recipeIndex]),
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
                                  image: AssetImage(recipes[recipeIndex].image),
                                ),
                              ),
                            ),
                            // Text container
                            Expanded(
                              // Wrap with the expanded widget to cover up the whole space of the container
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
                                      Text(
                                        recipes[recipeIndex].name,
                                        style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18,),
                                      ), // Recipe name
                                      const SizedBox(height: 9),
                                      Text(
                                        recipes[recipeIndex].shortdetail,
                                        style: const TextStyle(color: Colors.grey, fontSize: 11,),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          const Icon(Icons.timer, size: 17,),
                                          const SizedBox(width: 4,),
                                          Text(recipes[recipeIndex].time, style: const TextStyle(color: Colors.grey, fontSize: 12,)),
                                          const SizedBox(width: 22,),
                                          Text(recipes[recipeIndex].emogi, style: const TextStyle(fontSize: 16,)),
                                          const SizedBox(width: 6,),
                                          Text(recipes[recipeIndex].level, style: const TextStyle(color: Colors.grey, fontSize: 12,)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
