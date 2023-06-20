import 'package:flutter/material.dart';
import 'package:mi_proyecto/rutas.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 135, 54, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              // Agrega aquí la imagen de perfil
              backgroundImage: AssetImage('assets/image/perfil.jpeg'),
              radius: 100,
            ),
            const Text(
              'Bienvenido ',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rutas.Logeo);
              },
              child: const Text('Acceder'),
            ),
          ],
        ),
      ),
    );
  }
}
