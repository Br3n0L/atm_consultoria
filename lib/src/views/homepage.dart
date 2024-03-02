import 'package:atm_consultoria/src/views/client_page.dart';
import 'package:atm_consultoria/src/views/company_page.dart';
import 'package:atm_consultoria/src/views/contact_page.dart';
import 'package:atm_consultoria/src/views/service_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openCompany() {
    Navigator.push(
        context, MaterialPageRoute(builder: (contex) => const CompanyPage()));
  }

  void _openService() {
    Navigator.push(
        context, MaterialPageRoute(builder: (contex) => const servicePage()));
  }

  void _openClient() {
    Navigator.push(
        context, MaterialPageRoute(builder: (contex) => const ClientPage()));
  }

  void _openContact() {
    Navigator.push(
        context, MaterialPageRoute(builder: (contex) => const ContactPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM CONSULTORIA"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openCompany,
                    child: Image.asset('assets/images/menu_empresa.png'),
                  ),
                  Container(
                    width: 80,
                  ),
                  GestureDetector(
                    onTap: _openService,
                    child: Image.asset('assets/images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openClient,
                    child: Image.asset('assets/images/menu_cliente.png'),
                  ),
                  Container(
                    width: 80,
                  ),
                  GestureDetector(
                    onTap: _openContact,
                    child: Image.asset('assets/images/menu_contato.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
