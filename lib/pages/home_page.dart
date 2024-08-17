import 'package:coffee_shop/widget/build_dot.dart';
import 'package:coffee_shop/widget/build_text.dart';
import 'package:coffee_shop/widget/coffee_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildDot(),
                      BuildDot(),
                    ],
                  ),
                  SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildDot(),
                      BuildDot(),
                    ],
                  )
                ],
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          /*BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: '',
          ),*/
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Find your favorite ",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "coffee",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: " with ",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "Juai Kopi",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white60,
                ),
                hintText: 'Trouvez votre café préféré...',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                hintStyle: const TextStyle(color: Colors.white60),
                filled: true,
                fillColor: const Color.fromARGB(71, 158, 158, 158),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50, // Hauteur de la ListView
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildText(text: "Cappuccino"),
                  BuildText(text: "Espresso"),
                  BuildText(text: "Moccacino"),
                  BuildText(text: "Non Coffee"),
                  BuildText(text: "Mocca"),
                  BuildText(text: "Arabica"),
                  BuildText(text: "Smooth")
                ],
              ),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Coffee_card(imagePath: 'lib/image/cappucino.jpg', price: '20'),
                Coffee_card(imagePath: 'lib/image/latte.jpg', price: '16'),
                Coffee_card(imagePath: 'lib/image/coffee.jpg', price: '16'),
                Coffee_card(imagePath: 'lib/image/cappucino.jpg', price: '20'),
                Coffee_card(imagePath: 'lib/image/latte.jpg', price: '16'),
                Coffee_card(imagePath: 'lib/image/coffee.jpg', price: '16'),
              ],
            ),
          ),
          SizedBox(height: 10),
          const Text(
            "Special for you",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
