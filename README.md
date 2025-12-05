# Project Title
Uop Student Union Shop

# Description
This project is a website where users will be able to buy products (e.g., clothes) branded by the University of Portsmouth.

# Features
Home page - It shows products, the collections button, and promo at the top of the page
Collections page - Users will be able to view different collections of products 
Search - Present in many pages, it allows the user to search for products
User Authentication - A sign in/log in page for users to access personalised products


#Prerequisites
(Flutter SDK) - (https://flutter.dev/docs/get-started/install)
(Dart SDK) - (https://dart.dev/get-dart)

#Installation

*Clone the repository--
```bash
git clone <https://github.com/kaydehoopz05/union_shop>
```

*Navigate to Directory --
```bash
cd union_shop
```
*Install dependencies
```bash
flutter pub get
```
#Run the App
It can be ran on a web browser or simulator via:
```bash
flutter run
```
#Project Structure
```
union_shop/
├── android/            # Android files
├── ios/                # iOS files
├── lib/                # Source code
│   ├── main.dart         # App main point
│   ├── about_us_page.dart
│   ├── dummy_page.dart
│   ├── dummy_page2.dart    
│   ├── collection_page.dart
│   ├── collections_page.dart
│   ├── product_page.dart
│   ├── sale_products.dart
│   ├── sign_in.dart
│   ├── print_shack_about.dart
│   └── print_shack_personalisation.dart
├── test/               # Test files
│   ├── home_test.dart
│   ├── product_test.dart     
├── web/                # Web specific files
└── pubspec.yaml        # Project dependencies and metadata
```
#Key Files
* lib/main.dart - Main point of the app
* lib/collection_page.dart - It shows products within a specific collection
* lib/about_us_page.dart - Gives a brief description of the application/website

#Limitations
Searching - Searching via the footer takes you to the top of the page instead of allowing you to search from the button
Footer - In some pages, the footer is right under/ doesn't look as if it's at the bottom of the page

Future improvements will allow the user to see utilise personalisation, as well as see the personalisation on their product in real time

#Contact
Name: Keani Derrick
Email: up2246840@myport.ac.uk