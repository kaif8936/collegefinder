import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Screen'),
      ),
      body: const Center(
        child: Text('Saved Screen Content'),
      ),
    );
  }
}