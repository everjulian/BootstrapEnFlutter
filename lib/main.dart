import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Bootstrap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Acción del botón
              },
              icon: const Icon(BootstrapIcons.phone),
              label: Text('Iniciar sesión'),
            ),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                // Acción del botón
              },
              icon: Icon(FontAwesomeIcons.userPlus),
              label: Text('Registrarse'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.house),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.search),
            label: 'Buscar',
          ),
        ],
      ),
    );
  }
}
