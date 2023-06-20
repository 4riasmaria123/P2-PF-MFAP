import 'package:flutter/material.dart';
import 'package:mi_proyecto/paginas/contactos.dart';
import 'package:mi_proyecto/paginas/estudios.dart';
import 'package:mi_proyecto/paginas/experiencia.dart';
import 'package:mi_proyecto/paginas/skills.dart';

void main() => runApp(const HojaDeVidaApp());

class HojaDeVidaApp extends StatelessWidget {
  const HojaDeVidaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HojaDeVida(),
    );
  }
}

class HojaDeVida extends StatefulWidget {
  const HojaDeVida({Key? key}) : super(key: key);

  @override
  State<HojaDeVida> createState() => _HojaDeVidaState();
}

class _HojaDeVidaState extends State<HojaDeVida> {
  int _selectedIndex = 2;

  static const List<Widget> _widgetOptions = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          // Agrega aquí la imagen de perfil
          backgroundImage: AssetImage('assets/image/perfil.jpeg'),
          radius: 50,
        ),
        SizedBox(height: 10),
        Text(
          'Nombre: Maria Florangela Arias Peña',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Edad: 23 años',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          'Campo Laboral:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          'tencnico en seguridad ocupacional actual mete me encuentro  culminando los estudios en gestion de redes y sistemas teleinformaticos  en el centro educativo rudal iser pamplona.\n Me considero una persona responsable y humilde con las capacidades necesarias para realizar mi trabajo ya sea el que prectique , con la mejor disposición dentro de mi ámbito laboral.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    ), // Página de perfil
    Skills(), // Página de habilidades
    Estudios(), // Página de estudios
    Experiencia(), // Página de experiencia
    Contactos(), // Página de contactos
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0, // Espacio entre el título y la foto de perfil
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Maria florangela arias peña'),
            SizedBox(width: 10),
            CircleAvatar(
              // Agrega aquí la imagen de perfil
              backgroundImage: AssetImage('assets/image/perfil.jpeg'),
              radius: 21,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'perfil',
            backgroundColor: Color.fromARGB(255, 236, 196, 209),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Skills',
            backgroundColor: Color.fromARGB(255, 190, 175, 222),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'estudios',
            backgroundColor: Color.fromARGB(255, 210, 219, 171),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_location_alt_sharp),
            label: 'experienncia ',
            backgroundColor: Color.fromARGB(255, 240, 187, 225),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'contactos',
            backgroundColor: Color.fromARGB(255, 239, 201, 170),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
