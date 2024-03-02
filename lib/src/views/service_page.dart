import 'package:flutter/material.dart';

class servicePage extends StatefulWidget {
  const servicePage({super.key});

  @override
  State<servicePage> createState() => _servicePageState();
}

class _servicePageState extends State<servicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Serviço"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/detalhe_servico.png'),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Text(
                  'Nossos Serviços',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Consultoria'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Cálculo de preços'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Acompanhamento de Propostas'),
            ),
          ],
        ),
      )),
    );
  }
}
