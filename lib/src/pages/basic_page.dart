import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
        child: Column(
          children : <Widget>[
           
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
       
          ]
        ),
        )
    );
  }

  Widget _crearImagen(){
          return Container(
            width: double.infinity,
            child: Image(
              image: NetworkImage('https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg')
              ,fit: BoxFit.cover,
              ),
          );

  }

  Widget _crearTitulo(){
    /*
      SafeArea agrega los widgets donde se puede desplegar informacion
    */
    return SafeArea( 
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children : <Widget>[

                  Expanded( //Widget para ocupar todo el espacio poosible respetando los demas widget
                    child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, //Alineando a la izquierda
                      children: <Widget>[
                      Text('Lago con un puente',style: estiloTitulo,),
                      SizedBox(height: 8.0),
                      Text('Un lago en Alemania',style: estiloSubTitulo,)
                    ],
                    ),
                  ),
                  Icon(Icons.star,color: Colors.red, size: 30.0),
                  Text('41',style: TextStyle(fontSize: 20.0),)
                ]
              )
      ),
    );

  }

  Widget _crearAcciones(){
    return  Row(

      /*
      En un row mainAxisAligment es la forma de como se ordenan horizontalmente
      spaceEvenly es la reparticion por igual de los espacios en un row
      */
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 

      children: <Widget>[
        _accion(Icons.call,'Call'),
        _accion(Icons.near_me,'Route'),
        _accion(Icons.share,'Share'),
      ],
      );

  }

  Widget _accion(IconData icon, String texto){


    return Column(
          children : <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 6.0,),
            Text (texto, style: TextStyle(fontSize: 15.0,color: Colors.blue) ,)
          ]
        );
  
  
  }

  Widget _crearTexto(){
    return 
    SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal:40.0),
        child: Text(
          'Aute deserunt laboris culpa minim ea et id ullamco et tempor. Consectetur officia ad officia quis tempor veniam amet irure officia laborum qui sit. Ex consequat et velit ea. Dolor non esse nisi nulla velit ad aute magna irure elit occaecat. Adipisicing deserunt duis tempor anim occaecat aute labore commodo deserunt minim. Cupidatat voluptate incididunt voluptate elit culpa ex non ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}