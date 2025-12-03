import 'package:flutter/material.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/about_us_page.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/collection_page.dart';
import 'package:union_shop/sign_in.dart';
import 'package:union_shop/sale_products.dart';
import 'package:union_shop/print_shack_about.dart';
import 'package:union_shop/print_shack_personalisation.dart';
import 'package:union_shop/dummy_page.dart';

void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ResponsiveHomePage(),
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      initialRoute: '/',
      routes: {
        '/product': (context) => const ProductPage(),
        '/about': (context) => const AboutUsPage(),
        '/collections': (context) => const CollectionsPage(),
        '/collection': (context) => const CollectionPage(),
        '/signin': (context) => const SignInPage(),
        '/sale': (context) => const SaleProductsPage(),
        '/printshackabout': (context) => const PrintShackAbout(),
        '/printshackpersonalisation': (context) =>
            const PrintShackPersonalisation(),
        '/dummypage': (context) => const DummyPage()
      },
    );
  }
}

class ResponsiveHomePage extends StatefulWidget {
  const ResponsiveHomePage({super.key});

  @override
  State<ResponsiveHomePage> createState() => _ResponsiveHomePageState();
}

class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  bool _isSearchVisible = false;
  final List<Map<String, String>> _allProducts = [
    {
      'title': 'Purple UOP hoodie',
      'price': '£15.00',
      'imageUrl':
          'https://www.bing.com/th/id/OIG3.RkpRgfz74z9br17aNRbH?w=540&h=540&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
    },
    {
      'title': 'Black UOP shirt',
      'price': '£10.00',
      'imageUrl':
          'https://th.bing.com/th/id/OIG3.re7ORTDcIpiDKjB4GLG6?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
    },
    {
      'title': 'Purple POMPEY Cap',
      'price': '£5.00',
      'imageUrl':
          'https://th.bing.com/th/id/OIG1.BYU8T8ZxnFVyjxMZVcYz?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
    },
    {
      'title': 'UOP White Bottoms',
      'price': '£15.00',
      'imageUrl':
          'https://www.bing.com/th/id/OIG1.Leorup0zYwMTM_adbfwq?w=540&h=540&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
    },
  ];

  List<Map<String, String>> _foundProducts = [];

  @override
  void initState() {
    _foundProducts = _allProducts;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, String>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allProducts;
    } else {
      results = _allProducts
          .where((product) => product['title']!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundProducts = results;
    });
  }

  void navigateToProduct(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }

  void navigateToAboutUs(BuildContext context) {
    Navigator.pushNamed(context, '/about');
  }

  void navigateToCollections(BuildContext context) {
    Navigator.pushNamed(context, '/collections');
  }

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void navigateToSignIn(BuildContext context) {
    Navigator.pushNamed(context, '/signin');
  }

  void navigateToSale(BuildContext context) {
    Navigator.pushNamed(context, '/sale');
  }

  void navigateToPrintShackAbout(BuildContext context) {
    Navigator.pushNamed(context, '/printshackabout');
  }

  void navigateToPrintShackPersonalisation(BuildContext context) {
    Navigator.pushNamed(context, '/printshackpersonalisation');
  }

  void navigateToDummyPage(BuildContext context) {
    Navigator.pushNamed(context, 'dummypage');
  }

  void placeholderCallbackForButtons() {}

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isMobile = screenSize.width < 800;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      '20% OFF ON ALL PRODUCTS. COME AND GRAB THIS OFFER',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => navigateToHome(context),
                            child: Image.network(
                              'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                              height: 18,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  width: 18,
                                  height: 18,
                                  child: const Center(
                                    child: Icon(Icons.image_not_supported,
                                        color: Colors.grey),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                          if (isMobile)
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                if (value == 'home') {
                                  navigateToHome(context);
                                } else if (value == 'about') {
                                  navigateToAboutUs(context);
                                } else if (value == 'signin') {
                                  navigateToSignIn(context);
                                } else if (value == 'sale') {
                                  navigateToSale(context);
                                } else if (value == 'printshackabout') {
                                  navigateToPrintShackAbout(context);
                                } else if (value ==
                                    'printshackpersonalisation') {
                                  navigateToPrintShackPersonalisation(context);
                                }
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'home',
                                  child: Text('Home'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'shop',
                                  child: Text('Shop'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'printshackabout',
                                  child: Text('Print Shack - About'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'printshackpersonalisation',
                                  child: Text('Print Shack - Personalisation'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'sale',
                                  child: Text('SALE!'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'about',
                                  child: Text('About Us'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'signin',
                                  child: Text('Sign In'),
                                ),
                              ],
                              icon: const Icon(Icons.menu,
                                  color: Colors.grey, size: 18),
                            )
                          else
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              alignment: WrapAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () => navigateToHome(context),
                                  child: const Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: placeholderCallbackForButtons,
                                  child: const Text(
                                    'Shop',
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                PopupMenuButton<String>(
                                  onSelected: (value) {
                                    if (value == 'about') {
                                      navigateToPrintShackAbout(context);
                                    } else if (value == 'personalisation') {
                                      navigateToPrintShackPersonalisation(
                                          context);
                                    }
                                  },
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                    const PopupMenuItem<String>(
                                      value: 'about',
                                      child: Text('About'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'personalisation',
                                      child: Text('Personalisation'),
                                    ),
                                  ],
                                  child: const Text(
                                    'The Print Shack ⬇',
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => navigateToSale(context),
                                  child: const Text(
                                    'SALE!',
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => navigateToAboutUs(context),
                                  child: const Text(
                                    'About',
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.search,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  constraints: const BoxConstraints(
                                    minWidth: 32,
                                    minHeight: 32,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isSearchVisible = !_isSearchVisible;
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.person_outline,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  constraints: const BoxConstraints(
                                    minWidth: 32,
                                    minHeight: 32,
                                  ),
                                  onPressed: () => navigateToSignIn(context),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.shopping_bag_outlined,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  constraints: const BoxConstraints(
                                    minWidth: 32,
                                    minHeight: 32,
                                  ),
                                  onPressed: placeholderCallbackForButtons,
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (_isSearchVisible)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) => _runFilter(value),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            SizedBox(
              height: screenSize.height * 0.4, // 40% of screen height
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'REPRESENT',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Rep your uni with style.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () => navigateToCollections(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 163, 6, 215),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text(
                            'BROWSE COLLECTIONS',
                            style: TextStyle(fontSize: 14, letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        int crossAxisCount;
                        if (constraints.maxWidth > 1200) {
                          crossAxisCount = 4;
                        } else if (constraints.maxWidth > 800) {
                          crossAxisCount = 3;
                        } else if (constraints.maxWidth > 600) {
                          crossAxisCount = 2;
                        } else {
                          crossAxisCount = 1;
                        }
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 24,
                            mainAxisSpacing: 48,
                          ),
                          itemCount: _foundProducts.length,
                          itemBuilder: (context, index) => ProductCard(
                            title: _foundProducts[index]['title']!,
                            price: _foundProducts[index]['price']!,
                            imageUrl: _foundProducts[index]['imageUrl']!,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(0, 0, 0, 0),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Opening Hours',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(0, 0, 0, 0),
              padding: const EdgeInsets.all(24),
              child: const Text(
                'Term Time\nMonday - Friday : 10am - 4pm',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
