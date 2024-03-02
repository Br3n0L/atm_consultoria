import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Nossos Clientes"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/detalhe_cliente.png'),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Text(
                  'Nossos Clientes',
                  style: TextStyle(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset('assets/images/cliente1.png'),
            ),
            Text('Empresa de Software'),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset('assets/images/cliente2.png'),
            ),
            Text('Empresa de Auditpria'),
          ],
        ),
      )),
    );
  }
}
