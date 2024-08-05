import 'package:flutter/material.dart';

class CoffeeCategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  CoffeeCategoryChip({
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.brown : Colors.grey[800],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CoffeeItem extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  CoffeeItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl, width: double.infinity, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8.0),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18.0)),
            SizedBox(height: 4.0),
            Text(description, style: TextStyle(color: Colors.grey)),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${price.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.rectangle,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}