import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //quita espacios ed arriba
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        // contruye bajo demanda
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              //no queden espacios
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300?image=${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}
