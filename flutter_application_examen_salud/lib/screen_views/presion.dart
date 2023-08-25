

import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/componentes/caloriasComponentes.dart';

class presion extends StatefulWidget {
  const presion({super.key});

  @override
  State<presion> createState() => _presionState();
}

class _presionState extends State<presion> {

  TextEditingController presionController = TextEditingController();

  String mensaje = "";
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Indice de masa corporal')),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                          children: [
                            caloriasCampo(labelText: "Ingrese su presion arterial", controller: presionController),
                            const SizedBox(height: 10),
            
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  resultado = double.parse(presionController.text);
                                });

                                if(resultado <120){
                                mensaje = " y usted tiene la presión normal";
                            }
                                if(resultado >=120 && resultado <=129){
                                mensaje = " y usted tiene la presión arterial alta (sin otros factores de riesgo cardíaco)";
                            }
                                if(resultado >=130 && resultado <=179){
                                mensaje = " y usted tiene la presión arterial alta (con otros factores de riesgo cardíaco, según algunos proveedores)";
                            }
                                if(resultado >= 180){
                                mensaje = " y usted tiene la presión arterial peligrosamente alta - Busque atención médica de inmediato";
                            }
                              },
                              child: const Text('Calcular'),
                            ),
                            const SizedBox(height: 10),

                            
                            Text("Su presion arterial es de: $resultado $mensaje"),

                            
                          ],
                        ),
                        
                  )))),
                  
    );
  }
}