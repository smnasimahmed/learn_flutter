import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

// TODO: Add _RecipeDetailState here
class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      // 2
      body: SafeArea(
          // 3
          child: Column(
        children: [
          // 4
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              widget.recipe.imageUrl,
            ),
            // 5
          ),
          const SizedBox(
            height: 4,
          ),
          // 6
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          // TODO: Add expended
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
                final ingredient = widget.recipe.ingredients[index];
                return Text(
                    '${_sliderVal * ingredient.quantity} ${ingredient.measure} ${ingredient.name}');
              },
            ),
          ),
          // TODO: Add Slider() here
          Slider(
            min: 1,
            max: 10,
            divisions: 9,
            label: '${_sliderVal * widget.recipe.servings}',
            value: _sliderVal.toDouble(),
            onChanged: (double newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
        ],
      )),
    );
  }
}
