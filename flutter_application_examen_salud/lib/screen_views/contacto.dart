

import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/componentes/caloriasComponentes.dart';

class contacto extends StatefulWidget {
  const contacto({super.key});

  @override
  State<contacto> createState() => _contactoState();
}

class _contactoState extends State<contacto> {
  TextEditingController correoController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController celularController = TextEditingController();

  String correo = "";
  String nombre = "";
  String celular = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contacto')),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                          children: [
                            caloriasCampo(labelText: "Ingrese su correo electronico", controller: correoController),
                            const SizedBox(height: 10),
                            caloriasCampo(labelText: "Ingrese su nombre", controller: nombreController),
                            const SizedBox(height: 10),
                            caloriasCampo(labelText: "Ingrese su numero de celular", controller: celularController),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  correo = correoController.text;
                                  nombre = nombreController.text;
                                  celular = celularController.text;
                                });
                              },
                              child: const Text('Enviar'),
                            ),
                            const SizedBox(height: 10),
                            Text("Correo: $correo\nNombre: $nombre\nCelular: $celular"),
                          ],
                        ),
                  )))),
    );
  }
}