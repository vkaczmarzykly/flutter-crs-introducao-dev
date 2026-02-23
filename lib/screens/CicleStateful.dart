import 'package:flutter/material.dart';

class CicleStateful extends StatefulWidget {
  final Color cor;
  const CicleStateful({super.key, required this.cor});

  @override
  State<CicleStateful> createState() => _CicleStatefulState();
}

class _CicleStatefulState extends State<CicleStateful> {

  @override
  void initState() {
    super.initState();
    print('initState: Widget foi inserido na árvore de widgets');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies: Widget recebeu dependências / mudanças no context da árvore');
  }

  @override
  void didUpdateWidget(covariant CicleStateful oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: Propriedades mudaram');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose: Widget foi removido da árvore de widgets');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: widget.cor,
      child: Center(
        child: Text(
          'Cor Atual',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      )
    );
  }
}