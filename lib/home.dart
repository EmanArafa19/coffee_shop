import 'package:flutter/material.dart';
import 'package:coffee_shop/coffeeItem.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCategory = 'All Coffee';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(color: Colors.black),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(color: Colors.white),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(
                              'Bilzen, Tanjungbalai',
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            Icon(Icons.arrow_drop_down, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          hintText: 'Search coffee',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 16.0), 
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 143, 96, 20),
                        image: DecorationImage(
                          image: AssetImage('assets/svg/Icon-3.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/im2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'Promo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'Buy one get',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'one FREE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CoffeeCategoryChip(
                      label: 'All Coffee',
                      isSelected: selectedCategory == 'All Coffee',
                      onSelected: () {
                        setState(() {
                          selectedCategory = 'All Coffee';
                        });
                      },
                    ),
                    CoffeeCategoryChip(
                      label: 'Machiato',
                      isSelected: selectedCategory == 'Machiato',
                      onSelected: () {
                        setState(() {
                          selectedCategory = 'Machiato';
                        });
                      },
                    ),
                    CoffeeCategoryChip(
                      label: 'Latte',
                      isSelected: selectedCategory == 'Latte',
                      onSelected: () {
                        setState(() {
                          selectedCategory = 'Latte';
                        });
                      },
                    ),
                    CoffeeCategoryChip(
                      label: 'Americano',
                      isSelected: selectedCategory == 'Americano',
                      onSelected: () {
                        setState(() {
                          selectedCategory = 'Americano';
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    List<Map<String, String>> coffeeData = [
                      {
                        'name': 'Caffe Mocha',
                        'description': 'Deep Foam',
                        'price': '4.53',
                        'imageUrl': 'assets/images/im1.jpg',
                      },
                      {
                        'name': 'Flat White',
                        'description': 'Espresso',
                        'price': '3.53',
                        'imageUrl': 'assets/images/im4.jpg',
                      },
                      {
                        'name': 'Latte',
                        'description': 'Creamy and Smooth',
                        'price': '4.00',
                        'imageUrl': 'assets/images/im3.jpg',
                      },
                      {
                        'name': 'Cappuccino',
                        'description': 'Rich and Foamy',
                        'price': '4.25',
                        'imageUrl': 'assets/images/im4.jpg',
                      },
                    ];
                    var coffeeItem = coffeeData[index];
                    return CoffeeItem(
                      name: coffeeItem['name']!,
                      description: coffeeItem['description']!,
                      price: double.parse(coffeeItem['price']!),
                      imageUrl: coffeeItem['imageUrl']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/svg/Home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/svg/Icon-2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/svg/Icon.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/svg/Icon-1.png')),
            label: '',
          ),
        ],
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}