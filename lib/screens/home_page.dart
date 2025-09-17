import 'package:flutter/material.dart';
import '../models/food.dart';
import 'food_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home 123')),
      body: ListView.builder(
        itemCount: demoFoods.length,
        itemBuilder: (ctx, i) {
          final item = demoFoods[i];
          return ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text(item.title),
            subtitle: Text(item.vendor),
            trailing: Text('\$${item.price}'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => FoodDetailPage(item: item)),
            ),
          );
        },
      ),
    );
  }
}
