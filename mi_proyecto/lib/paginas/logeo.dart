import 'package:flutter/material.dart';

import '../rutas.dart';

class Logeo extends StatefulWidget {
  static String id = "logeo";

  const Logeo({Key? key}) : super(key: key);

  @override
  State<Logeo> createState() => _LogeoState();
}

class _LogeoState extends State<Logeo> {
  bool isRegistrarse =
      false; // Variable para controlar el estado de la pantalla
  String nombre = '';
  String email = '';
  String contrasena = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 135, 54, 242),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Inicio de\nsesión",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isRegistrarse =
                            false; // Cambiar a la pantalla de inicio de sesión
                      });
                    },
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: isRegistrarse
                            ? Colors.white
                            : Colors
                                .yellow, // Cambiar color al estar seleccionado
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isRegistrarse =
                            true; // Cambiar a la pantalla de registro
                      });
                    },
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: isRegistrarse
                            ? Colors.yellow
                            : Colors
                                .white, // Cambiar color al estar seleccionado
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              if (isRegistrarse) ...[
                _textFieldName(),
                const SizedBox(
                  height: 15.0,
                ),
                _textFieldEmail(),
                const SizedBox(
                  height: 15.0,
                ),
                _textFielPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                buttonSignUp(),
              ] else ...[
                _textFieldEmail(),
                const SizedBox(
                  height: 15.0,
                ),
                _textFielPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                buttonSignIn(),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return _textFieldGeneral(
      labelText: 'Nombre',
      hintText: 'Maria',
      icon: Icons.person_outline,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        setState(() {
          nombre = value; // Guardar el nombre ingresado
        });
      },
    );
  }

  Widget _textFieldEmail() {
    return _textFieldGeneral(
      labelText: 'Email',
      hintText: 'ejemplo@gmail.com',
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email_outlined,
      onChanged: (value) {
        setState(() {
          email = value; // Guardar el email ingresado
        });
      },
    );
  }

  Widget _textFielPassword() {
    return _textFieldGeneral(
      labelText: 'Contraseña',
      hintText: '********',
      icon: Icons.lock_outline,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          contrasena = value; // Guardar la contraseña ingresada
        });
      },
    );
  }

  Widget _textFieldGeneral({
    required String labelText,
    required String hintText,
    required IconData icon,
    TextInputType? keyboardType,
    bool obscureText = false,
    required void Function(String) onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buttonSignIn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, Rutas.hojaDeVida);
      },
      child: const Text('Iniciar '),
    );
  }

  Widget buttonSignUp() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, Rutas.Logeo, arguments: {
          'correo': email,
          'contrasena': contrasena,
        });
      },
      child: const Text('registrarme '),
    );
  }
}
