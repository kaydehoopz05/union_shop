import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
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

    void navigateToSignIn(BuildContext context) {
    Navigator.pushNamed(context, '/signin');
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isMobile = screenSize.width < 800;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
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
            Container(
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
                            child: Icon(Icons.image_not_supported, color: Colors.grey),
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
                        constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                        onPressed: placeholderCallbackForButtons,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.person_outline,
                          size: 18,
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                        onPressed: placeholderCallbackForButtons,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                        onPressed: placeholderCallbackForButtons,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          size: 18,
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                        onPressed: placeholderCallbackForButtons,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // About Us Content
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text(
                    'ABOUT US',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    ' This is the Union Shop.\n We sell a variety of products to support our student union, and so you can represent us as much as possible. \n'
                    ' We hope you enjoy using our products and much as we enjoy making them!\n'
                    " If you have any problems, don't hesitate to email us at: \n upsu@gmail.com\n\n"
                    ' Regards,\n The Student Union',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, height: 1.5),
                  ),
                ],
              ),
            ),
            // Footer
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Text(
                'ADD LINKS',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
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
