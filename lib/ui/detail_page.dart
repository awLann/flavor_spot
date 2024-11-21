import 'package:flutter/material.dart';
import 'package:flavor_spot/model/food_recipe.dart';
import 'package:flavor_spot/ui/widgets/favorite_button.dart';
import 'package:flavor_spot/ui/widgets/ingredients_widget.dart';
import 'package:flavor_spot/ui/widgets/steps_widget.dart';

class DetailPage extends StatelessWidget {
  final FoodRecipe recipe;

  const DetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  recipe.imageAsset,
                  width: 600,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: const FavoriteButton(),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.name,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.schedule),
                                    Text(recipe.cookingTime)
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  children: [
                                    const Icon(Icons.bar_chart),
                                    Text(recipe.difficulty)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                            ),
                            Text(recipe.rating)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16
                ),
                child: Text(
                  recipe.description,
                  style: const TextStyle(
                    fontSize: 16
                  ),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16
                ),
                child: Column(
                  children: [
                    const Text(
                      'Bahan-bahan',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height: 240,
                        child: IngredientsWidget(ingredients: recipe.ingredients)
                    )
                  ],
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16
                ),
                child: Column(
                  children: [
                    const Text(
                      'Langkah-langkah',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                        height: 240,
                        child: StepsWidget(steps: recipe.steps)
                    )
                  ],
                ),
              )
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
