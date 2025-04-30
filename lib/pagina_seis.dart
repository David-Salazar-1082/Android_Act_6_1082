import 'package:flutter/material.dart';

//! AnimatedPadding

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _Widget015State();
}

class _Widget015State extends State<PantallaSeis> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Change padding'),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('Padding = $padValue'),
            const SizedBox(height: 20),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(
                height:
                    30), // Espacio entre el contenedor animado y el siguiente botón
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, '/pantalla1'); // Navega hacia Pantalla 1
                },
                child: const Text('Pantalla 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
