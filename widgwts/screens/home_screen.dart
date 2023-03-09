import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_routes.dart';
import 'package:flutter_application_2/screens/listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.menuOptions[index].icon),
                title: Text(AppRoutes.menuOptions[index].name),
                onTap: () {
                  //navegar entre pantallas
                  /* final route = MaterialPageRoute(
                    builder: (context) => Listview1Screen(),
                  );
                  Navigator.push(context, route); */
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                  //pushReplacement destruye ruta anterior
                },
              ),
          separatorBuilder: (_, __) => Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
