import 'package:flutter/material.dart';
import 'package:front_end_flutter/model/Contador.dart';
import 'package:front_end_flutter/model/ItemCatalog.dart';
import 'package:front_end_flutter/screens/CicleStateful.dart';
import 'package:front_end_flutter/screens/StatefulParent.dart';
import 'package:front_end_flutter/screens/widget_conteudo.dart';
import 'package:front_end_flutter/screens/widgets_layout.dart';

class ListContents extends StatelessWidget {
  final List<ItemCatalog> secoes = [
    ItemCatalog(
      title: 'Widgets de Conteúdo',
      icon: Icons.content_copy,
      description: 'Widgets que exibem conteúdo, como texto e imagens.',
      destination: WidgetConteudo(),
    ),
    ItemCatalog(
      title: 'Widgets de Layout',
      icon: Icons.view_quilt,
      description: 'Widgets que organizam outros widgets na tela.',
      destination: WidgetsLayout(),
    ),
    ItemCatalog(
      title: 'Cicle Life - Stateful',
      icon: Icons.sync,
      description: 'Entendendo o ciclo de vida de um StatefulWidget.',
      destination: Statefulparent(),
    ),
    ItemCatalog(
      title: 'Contador - setState',
      icon: Icons.refresh,
      description: 'Exemplo de contador utilizando setState e gerenciamento de estado.',
      destination: Contador(),
    ),
  ];

  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Conteúdo')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        childAspectRatio: 0.95,
        padding: EdgeInsets.all(16),
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destination),
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Icon(item.icon, size: 48, color: Colors.blue),
                        Text(
                          item.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          item.description,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
