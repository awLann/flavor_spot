import 'package:flutter/material.dart';

class StepsWidget extends StatelessWidget {
  final List<String> steps;

  const StepsWidget({super.key, required this.steps});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return Text(
            '${index+1}. ${steps[index]}',
            style: const TextStyle(
              fontSize: 16
            ),
          );
        }
    );
  }
}
