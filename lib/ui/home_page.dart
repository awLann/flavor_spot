import 'package:flutter/material.dart';
import 'package:flavor_spot/model/food_recipe.dart';
import 'package:flavor_spot/ui/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Rekomendasi untukmu',
          style: TextStyle(
            fontFamily: 'FunnelSans',
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final FoodRecipe recipe = foodRecipeList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(recipe: recipe);
                }));
              },
              child: Card(
                margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          recipe.imageAsset,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipe.name,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const Icon(
                                      Icons.star_rate,
                                      color: Colors.amber
                                  ),
                                  Text(recipe.rating)
                                ],
                              ),
                              const SizedBox(height: 15),
                              Text(recipe.description)
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: foodRecipeList.length,
        ),
      ),
    );
  }
}