import 'package:flutter/material.dart';
import 'package:front_end_flutter/widgets/titulo_secao.dart';

class WidgetConteudo extends StatelessWidget {
  const WidgetConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de Widgets')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [TituloSecao(titulo: 'Textos'),
        Text('Texto estilizado', style: TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.bold
        ),),
        Text('Texto com estilo padrão', style: TextStyle(
          fontSize: 18, 
        ),),

        Divider(),
        TituloSecao(titulo: 'Imagens'),
        Image.network('https://picsum.photos/id/237/200/300', height: 240,),

        Divider(),
        TituloSecao(titulo: 'Ícones'),
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 32,),
            Icon(Icons.star, color: Colors.yellow, size: 32,),
            Icon(Icons.settings, color: Colors.blue, size: 32,),
          ]
          ),

        Divider(),
        TituloSecao(titulo: 'Elevated Button'),
        ElevatedButton(onPressed: () {},child: Text('Clique aqui') )
      ],)
    );
  }
}
