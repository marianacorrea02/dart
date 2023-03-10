import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  //diseño de alerta para ios
  void displayDialogIOS(BuildContext context) {
    //cupertino diseños de ios
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Texto en ios'),
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
        });
  }

  //diseño de alerta para android
  void displayDialogAndroid(BuildContext context) {
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
            //para poner diseño dependiendo el SO
            /*onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)*/
            // funciona en web
            onPressed: () => displayDialogAndroid(context),
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
