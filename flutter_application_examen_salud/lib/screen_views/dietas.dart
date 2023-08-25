

import 'package:flutter/material.dart';

class dietas extends StatefulWidget {
  const dietas({super.key});

  @override
  State<dietas> createState() => _dietasState();
}

class _dietasState extends State<dietas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dietas', style: TextStyle(color: Colors.white, fontSize: 25),),
      ),

      body: Column(
        children: [       
          const Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Desayuno ideal para iniciar el día'),
              subtitle: Text(
                  'La avena es la mejor aliada para cualquier persona que busque perder peso. Su alto porcentaje en fibra y escasez de grasa lo hace un alimento perfecto para aportarnos energía, facilitar nuestras digestiones, saciar y reducir la retención de líquidos.Para este sencillo desayuno solo necesitas mezclar la avena precocida con leche desnatada o, si lo prefieres, con una leche vegetal de tu preferencia.'),

                  
            ),
          ),

           Card(
            child: Center(
              child:Image.network('https://t2.uc.ltmcdn.com/es/posts/8/8/4/copos_de_avena_con_leche_51488_0_600.webp', height: 100
              ,),
            ),
          ),

          const SizedBox(height: 20,),

           const Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Almuerzo ideal para una dieta saludable'),
              subtitle: Text(
                'el filete de pechuga a la plancha! Gracias a los beneficios de la pechuga de pollo, este almuerzo casero resulta perfecto para adelgazar'),
            ),
          ),

          Card(
            child: Center(
              child:Image.network('https://www.laurafuentes.soy/wp-content/uploads/2022/03/pan-fried-chicken-breasts_post_2.jpg', height: 100
              ,),
            ),
          ),

            const SizedBox(height: 20,),


           const Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Cena ideal para una dieta saludable'),
              subtitle: Text(
                  'Una manera rápida y sencilla de obtener proteínas, un nutriente presente en la quinoa. La combinación con el brócoli, una verdura rica en fibra y minerales, le da un sabor delicioso, que puedes potenciar agregando una cucharadita de salsa de soja y aceite de sésamo.'),
            ),
          ),

          Card(
            child: Center(
              child:Image.network('https://hips.hearstapps.com/hmg-prod/images/quinoa-con-brocoli-1626261947.jpeg?crop=1.00xw:0.865xh;0,0.0640xh&resize=980:*', height: 100
              ,),
            ),
          ),
        ],
      ),
    );
  }
}