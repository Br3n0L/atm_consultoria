import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Nossos Contatos"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/detalhe_contato.png'),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Text(
                  'Nossos Contatos',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('E-mail: atendimento@atmconsultoria.com.br'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Telefone: (87) 3525-8596'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Endereço: Rua Coronel Virtuoso, n. 205, centro'),
            ),
          ],
        ),
      )),
    );
  }
}
