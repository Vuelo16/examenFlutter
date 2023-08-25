
import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/screen_views/calorias.dart';
import 'package:flutter_application_examen_salud/screen_views/contacto.dart';
import 'package:flutter_application_examen_salud/screen_views/dietas.dart';
import 'package:flutter_application_examen_salud/screen_views/imc.dart';
import 'package:flutter_application_examen_salud/screen_views/presion.dart';
import 'package:flutter_application_examen_salud/screen_views/rutinas.dart';

List<String> opciones = ['dietas', 'imc','calorias', 'rutinas', 'presion', 'sugerencias'];

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vida saludable', style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body: ListView(
        children:  [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Dietas'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => const dietas());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Indice de masa corporal'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => imc());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Calorias'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => calorias());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Rutinas de ejercicio'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => rutinas());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Presión arterial'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => presion());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Contacto'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => contacto());
              Navigator.push(context, route);
            },
          ),
         
        ],
      ),
    );
  }
}