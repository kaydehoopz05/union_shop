import 'package:flutter/material.dart';

class DummyPage2 extends StatelessWidget {
  const DummyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('Conditions and Terms'),
      ),
    );
  }
}
