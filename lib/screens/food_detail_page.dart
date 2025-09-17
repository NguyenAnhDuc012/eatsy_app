import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodDetailPage extends StatelessWidget {
  final Food item;
  const FoodDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Vendor: ${item.vendor}'),
            const SizedBox(height: 8),
            Text('Price: \$${item.price.toStringAsFixed(2)}'),
            const SizedBox(height: 8),
            Text('Rating: ${item.rating}'),
          ],
        ),
      ),
    );
  }
}
