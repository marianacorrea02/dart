import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: const [
          CustomCardType1(),
          // separacio entre cards
          SizedBox(
            height: 10,
          ),
          CustomCartType2(
              name: 'prueba',
              imageUrl:
                  'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          CustomCartType2(
              imageUrl:
                  'https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          CustomCartType2(
              imageUrl:
                  'https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
        ],
      ),
    );
  }
}
