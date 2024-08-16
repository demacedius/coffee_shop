import 'package:coffee_shop/widget/build_dot.dart';
import 'package:coffee_shop/widget/build_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDot(),
                      buildDot(),
                    ],
                  ),
                  const SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDot(),
                      buildDot(),
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          )
        ],
      ),
      body: Column(
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
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50, // Hauteur de la ListView
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildText(text: "Cappuccino"),
                  buildText(text: "Espresso"),
                  buildText(text: "Moccacino"),
                  buildText(text: "Non Coffee"),
                  buildText(text: "Mocca"),
                  buildText(text: "Arabica"),
                  buildText(text: "Smooth")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
