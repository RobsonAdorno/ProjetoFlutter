import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServicos.dart';
import 'package:flutter/material.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
      void _abrirClientes() {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => TelaCliente()
        ));
      }

      void _abrirEmpresa() {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => TelaEmpresa()
        ));
      }

      void _abrirServicos() {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => TelaServicos()
        ));
      }

      void _abrirContato() {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => TelaContato()
        ));
      }
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top:12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _abrirClientes();
                    },
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      _abrirEmpresa();
                    },
                    child: Image.asset('images/menu_empresa.png'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _abrirServicos();
                    },
                    child: Image.asset('images/menu_servico.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      _abrirContato();
                    },
                    child: Image.asset('images/menu_contato.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}