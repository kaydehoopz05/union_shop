// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:union_shop/main.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/about_us_page.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/collection_page.dart';
import 'package:union_shop/sign_in.dart';
import 'package:union_shop/sale_products.dart';

class PrintShackAbout extends StatelessWidget {
  const PrintShackAbout({super.key});

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
                                  onPressed: () {},
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
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 41, 121, 179),
              padding: const EdgeInsets.all(24),
              child: const Text(
                'Opening Hours',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
