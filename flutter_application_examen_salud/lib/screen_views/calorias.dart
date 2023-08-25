

import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/componentes/caloriasComponentes.dart';

class calorias extends StatefulWidget {
  const calorias({super.key});

  @override
  State<calorias> createState() => _caloriasState();
}

class _caloriasState extends State<calorias> {

  TextEditingController desayunoController = TextEditingController();
  TextEditingController almuerzoController = TextEditingController();
  TextEditingController cenaController = TextEditingController();

  double resultado = 0;
  String mensajeH = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Calorias')),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                          children: [
                            caloriasCampo(labelText: "Ingrese las calorias de su desayuno", controller: desayunoController),
                            const SizedBox(height: 10),
                            caloriasCampo(labelText: "Ingrese las calorias de su almuerzo", controller: almuerzoController),
                            const SizedBox(height: 10),
                            caloriasCampo(labelText: "Ingrese las calorias de su cena", controller: cenaController),
                            const SizedBox(height: 10),
                            

                            const SizedBox(height: 10),

                            const Text("Elija su genero"),


                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  resultado = double.parse(desayunoController.text) + double.parse(almuerzoController.text) + double.parse(cenaController.text);

                                  if (resultado < 2000){
                                    mensajeH = " y usted está en un deficit calorico";
                                  }
                                  else if (resultado >= 2000 && resultado<=2500){
                                    mensajeH = " y usted está en un consumo normal de calorias";
                                  }
                                  else{
                                    mensajeH = " y usted tiene un consumo excesivo de calorias";
                                  }
                                });
                              },
                              child: const Text('Hombre'),
                            ),
                            const SizedBox(height: 10),

                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  resultado = double.parse(desayunoController.text) + double.parse(almuerzoController.text) + double.parse(cenaController.text);

                                  if (resultado < 1600){
                                    mensajeH = " y usted está en un deficit calorico";
                                  }
                                  else if (resultado >= 1600 && resultado<=2000){
                                    mensajeH = " y usted está en un consumo normal de calorias";
                                  }
                                  else{
                                    mensajeH = " y usted tiene un consumo excesivo de calorias";
                                  }
                                });
                              },
                              child: const Text('Mujer'),
                            ),
                            const SizedBox(height: 10),

                            
                            Text("El total de calorias es: $resultado $mensajeH"),

                            
                          ],
                        ),
                        
                  )))),
                  
    );
  }
}