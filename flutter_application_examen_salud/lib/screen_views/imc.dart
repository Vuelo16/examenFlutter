
import 'package:flutter/material.dart';
import 'package:flutter_application_examen_salud/componentes/imcComponentes.dart';

class imc extends StatefulWidget {
  const imc({super.key});

  @override
  State<imc> createState() => _imcState();
}

class _imcState extends State<imc> {

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  double resultado = 0;
  String mensaje = "";

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
                            imcCampo(labelText: "Ingrese su peso en kilogramos", controller: pesoController),
                            const SizedBox(height: 10),
                            imcCampo(labelText: "Ingrese su altura en metros", controller: alturaController),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  resultado = (double.parse(pesoController.text)) / ((double.parse(alturaController.text) * double.parse(alturaController.text)));
                                });

                                if(resultado <18.5){
                                mensaje = "y su peso es inferior al normal";
                            }
                                if(resultado >=18.5 && resultado <=24.9){
                                mensaje = "y usted tiene un peso normal";
                            }
                                if(resultado >=25 && resultado <=29.9){
                                mensaje = "y su peso es superior al normal";
                            }
                                if(resultado >30){
                                mensaje = "y usted tiene obesidad";
                            }
                              },
                              child: const Text('Calcular'),
                            ),
                            const SizedBox(height: 10),

                            
                            Text("Su indice de masa corporal es: $resultado $mensaje"),

                            
                          ],
                        ),
                        
                  )))),
                  
    );
    
  }
}