import 'package:flutter/material.dart';
import 'package:uii_android_act_6_1082/pagina_inicial.dart';
import 'package:uii_android_act_6_1082/pagina_dos.dart';
import 'package:uii_android_act_6_1082/pagina_tres.dart';
import 'package:uii_android_act_6_1082/pagina_cuatro.dart';
import 'package:uii_android_act_6_1082/pagina_cinco.dart';
import 'package:uii_android_act_6_1082/pagina_seis.dart';
import 'package:uii_android_act_6_1082/pagina_siete.dart';
import 'package:uii_android_act_6_1082/pagina_ocho.dart';
import 'package:uii_android_act_6_1082/pagina_nueve.dart';
import 'package:uii_android_act_6_1082/pagina_diez.dart';
import 'package:uii_android_act_6_1082/pagina_once.dart';

void main() => runApp(MisWidgets());

class MisWidgets extends StatelessWidget {
  const MisWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets con rutas nombradas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
