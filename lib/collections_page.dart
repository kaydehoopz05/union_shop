import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:union_shop/product_page.dart';
// ignore: unused_import
import 'package:union_shop/about_us_page.dart';
// ignore: unused_import
import 'package:union_shop/collection_page.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  void navigateToProduct(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }

  void navigateToAboutUs(BuildContext context) {
    Navigator.pushNamed(context, '/about');
  }

  void navigateToCollectionPage(BuildContext context) {
    Navigator.pushNamed(context, '/collection');
  }

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

    void navigateToSignIn(BuildContext context) {
    Navigator.pushNamed(context, '/signin');
  }

  void placeholderCallbackForButtons() {}

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
                                }
                              },
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'home',
                                  child: Text('Home'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'shop',
                                  child: Text('Shop'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'print_shop',
                                  child: Text('The Print Shop'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'sale',
                                  child: Text('SALE!'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'about',
                                  child: Text('About'),
                                ),
                                 const PopupMenuItem<String>(
                                  value: 'signin',
                                  child: Text('Sign In'),
                                ),
                              ],
                              icon: const Icon(Icons.menu, color: Colors.grey, size: 18),
                            )
                          else
                          Wrap(
                            spacing: 8.0, // Horizontal space between children
                            runSpacing: 4.0, // Vertical space between runs
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
                              TextButton(
                                onPressed: placeholderCallbackForButtons,
                                child: const Text(
                                  'The Print Shop',
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
                                onPressed: placeholderCallbackForButtons,
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
                                onPressed: placeholderCallbackForButtons,
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
                              IconButton(
                                icon: const Icon(
                                  Icons.menu,
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
            Container(
              color: const Color.fromARGB(255, 245, 216, 216),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'COLLECTIONS',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: [
                        ProductCard(
                          title: 'Hoodies',
                          imageUrl:
                              'https://th.bing.com/th/id/OIP.rKDWrB-LWQsVSLqrobhYwgHaEz?w=275&h=180&c=7&r=0&o=7&dpr=1.5&pid=1.7&rm=3',
                          onPressed: () => navigateToCollectionPage(context),
                        ),
                        ProductCard(
                          title: 'Shirts',
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                        ProductCard(
                          title: 'Shorts',
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                        ProductCard(
                          title: 'Bottoms',
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                          onPressed: () => placeholderCallbackForButtons(),
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
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  const ProductCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
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
            ],
          ),
        ],
      ),
    );
  }
}
