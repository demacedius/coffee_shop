import 'package:coffee_shop/pages/coffee_detail.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Coffee_card extends StatelessWidget {
  final String imagePath;
  final String price;
  final String name;
  final String description;

  const Coffee_card({
    super.key,
    required this.imagePath,
    required this.price,
    required this.name,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 61, 61, 61),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "180 ml",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "\$",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: price,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CoffeeDetailPage(
                        imagePath: imagePath,
                        price: price,
                        name: name,
                        description: description,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange,
                  ),
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
