import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Mensaje de alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // va a la pantalla anterior
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
