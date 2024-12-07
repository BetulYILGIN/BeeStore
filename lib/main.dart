import 'package:flutter/material.dart';

void main() {
  print("merhaba");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Betül";

    // Dinamik veriler
    final List<Map<String, String>> categories = [
      {"image": "assets/2.png", "label": "Fashion"},
      {"image": "assets/1.png", "label": "Electronic"},
      {"image": "assets/3.png", "label": "Appliances"},
      {"image": "assets/4.png", "label": "Beauty"},
      {"image": "assets/1.png", "label": "Sports"},
      {"image": "assets/3.png", "label": "Books"},
      {"image": "assets/4.png", "label": "Toys"},
      {"image": "assets/3.png", "label": "Sports"},
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
          centerTitle: false,
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Search Anything...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Color(0xFFD1D5DB),
                            width: 1,
                          ))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All ->',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Dinamik kategoriler listesi
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((category) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(category['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category['label']!,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
              Text('Merhaba $name nasılsın?'),
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
