import 'package:flutter/material.dart';
import 'package:mi_proyecto/paginas/contactos.dart';
import 'package:mi_proyecto/paginas/estudios.dart';
import 'package:mi_proyecto/paginas/experiencia.dart';
import 'package:mi_proyecto/paginas/hojadevida.dart';
import 'package:mi_proyecto/paginas/home.dart';
import 'package:mi_proyecto/paginas/logeo.dart';
import 'package:mi_proyecto/paginas/skills.dart';
import 'package:mi_proyecto/rutas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi proyecto',
      theme: ThemeData(
        primarySwatch: Colors.blue, //color boton
      ),
      initialRoute: Rutas.home,
      routes: {
        Rutas.home: (context) => const Home(),
        Rutas.Logeo: (context) => const Logeo(),
        Rutas.hojaDeVida: (context) => const HojaDeVida(),
        Rutas.skills: (context) => const Skills(),
        Rutas.estudios: (context) => const Estudios(),
        Rutas.experiencia: (context) => const Experiencia(),
        Rutas.contactos: (context) => const Contactos(),
      },
    );
  }
}
