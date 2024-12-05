import 'package:flutter/material.dart';
import 'package:flutter_dart_course/screens/meals.dart';
import 'package:flutter_dart_course/widgets/category_grid_item.dart';
import 'package:flutter_dart_course/data/dummy_data.dart';
import 'package:flutter_dart_course/models/category.dart';
import 'package:flutter_dart_course/models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({
    super.key,
    required this.availableMeals});

  final List<Meal>availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 300),
        lowerBound: 0,
        upperBound: 1,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, Category category){
    final filteredMeals = widget.availableMeals.where((meal)=>meal.categories.contains(category.id)).toList();

    Navigator.push(context, MaterialPageRoute(builder: (ctx)=> MealsScreen(
        meals: filteredMeals,
        title: category.title,
    )));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          // availableCategories.map()
          for(final category in availableCategories)
            CategoryGridItem(category: category, onSelectCategory: (){
              _selectCategory(context, category);
            },)
        ],
    );
  }
}