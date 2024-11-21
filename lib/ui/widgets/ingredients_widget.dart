import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  final List<String> ingredients;

  const IngredientsWidget({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ingredients.length,
      itemBuilder: (context, index) {
        return Text(
          '${index+1}. ${ingredients[index]}',
          style: const TextStyle(
            fontSize: 16
          ),
        );
      },
    );
  }
}
