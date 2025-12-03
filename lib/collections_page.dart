import 'package:flutter/material.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key});

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isSearchVisible = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
    Navigator.pushNamed(context, '/dummypage');
  }

  void navigateToDummyPage2(BuildContext context) {
    Navigator.pushNamed(context, '/dummypage2');
  }

  void placeholderCallbackForButtons() {}

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isMobile = screenSize.width < 800;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
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
                              'https://www.bing.com/th/id/OIG3.RkpRgfz74z9br17aNRbH?w=540&h=540&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
                          onPressed: () => navigateToCollectionPage(context),
                        ),
                        ProductCard(
                          title: 'Shirts',
                          imageUrl:
                              'https://th.bing.com/th/id/OIG3.re7ORTDcIpiDKjB4GLG6?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                        ProductCard(
                          title: 'Shorts',
                          imageUrl:
                              'https://www.bing.com/th/id/OIG3.KhaRu3KM6S2rn3H9xCzb?w=540&h=540&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                        ProductCard(
                          title: 'Bottoms',
                          imageUrl:
                              'https://www.bing.com/th/id/OIG1.Leorup0zYwMTM_adbfwq?w=540&h=540&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                        ProductCard(
                          title: 'Caps',
                          imageUrl:
                              'https://th.bing.com/th/id/OIG1.BYU8T8ZxnFVyjxMZVcYz?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn',
                          onPressed: () => placeholderCallbackForButtons(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isSearchVisible = !_isSearchVisible;
                });
                _scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text(
                'Search',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: () => navigateToDummyPage(context),
              child: const Text(
                'Opening Hours',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: () => navigateToDummyPage2(context),
              child: const Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.underline,
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
