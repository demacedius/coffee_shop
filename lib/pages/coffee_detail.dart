import 'package:flutter/material.dart';

class CoffeeDetailPage extends StatefulWidget {
  final String name;
  final String imagePath;
  final String price;
  final String description;

  const CoffeeDetailPage({
    required this.imagePath,
    required this.price,
    required this.name,
    required this.description,
    super.key,
  });

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  int quantity = 1;
  late double totalPrice;

  @override
  void initState() {
    super.initState();
    totalPrice = double.parse(widget.price);
  }

  void _incrementQuantity() {
    setState(() {
      quantity++;
      totalPrice = quantity * double.parse(widget.price);
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        totalPrice = quantity * double.parse(widget.price);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          // Image taking space at the top
          SizedBox(
            width: double.infinity,
            height: screenHeight / 2, // Adjust height as needed
            child: Stack(
              children: [
                Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top +
                      16, // Just below the status bar
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Content below the image
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Descritpion',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  'Quantity',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: _decrementQuantity,
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.orange,
                        ),
                        Text(
                          '$quantity',
                          style: const TextStyle(color: Colors.orange),
                        ),
                        IconButton(
                          onPressed: _incrementQuantity,
                          icon: const Icon(Icons.add_circle),
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Text(
                      'Total Price: \$${totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                // Handle "Add to Favorites" action
              },
              icon: const Icon(Icons.favorite_border),
              color: Colors.red,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add to Cart'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
