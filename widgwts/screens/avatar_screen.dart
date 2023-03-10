import 'package:flutter/material.dart';

void main() => runApp(const AvatarScreen());

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marina Correa'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: const Text('MC'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/imagen avatar.jpg'),
          maxRadius: 100, //especificar tamaño
        ),
      ),
    );
  }
}
