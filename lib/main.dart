import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (
    home: SourcePage(),
  ));
}

// Halaman Asal
class SourcePage extends StatelessWidget {
  const SourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Asal')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DestinationPage()),
            );
            },
            child: const Hero(
              tag: 'avatarTag',
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 50,
            ),
          ),
        ),
      );
    }
  }

// Halaman Tujuan
class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Tujuan')),
      body: const Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}