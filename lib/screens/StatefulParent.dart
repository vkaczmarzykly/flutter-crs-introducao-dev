import 'package:flutter/material.dart';
import 'package:front_end_flutter/screens/CicleStateful.dart';

class Statefulparent extends StatefulWidget {
  const Statefulparent({super.key});

  @override
  State<Statefulparent> createState() => _StatefulparentState();
}

class _StatefulparentState extends State<Statefulparent> {

  Color corAtual = Colors.blue;

  void trocarCor() {
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ciclo de Vida - StatefulWidget (Parent)'),),
      body: Column(
        children: [
          Text(
            'Simulando os diferentes estágios do ciclo de vida de um StatefulWidget.',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          CicleStateful(cor: corAtual),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: trocarCor,
            child: Text('Trocar cor'),
          ),
        ]
      )
    );
  }
}