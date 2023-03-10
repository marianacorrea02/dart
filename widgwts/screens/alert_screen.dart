import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void displayDialog(BuildContext context) {
    showDialog(
      //cerrar el dialogo al dar click en la sombra por defecto en false
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('este es el titulo'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: const Column(
            //el contenido determina el largo de la colimna
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("contenido de alerta"),
              SizedBox(height: 10),
              FlutterLogo(
                size: 50,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Text('Mensaje de alerta')),
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
