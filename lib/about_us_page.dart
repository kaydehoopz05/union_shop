import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

   void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }
}
