import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  var text = "Existem muitas variações disponíveis de passagens de Lorem Ipsum," +
   "mas a maioria sofreu algum tipo de alteração," +
    "seja por inserção de passagens com humor," +
     "ou palavras aleatórias que não parecem nem um pouco convincentes."+
      "Se você pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que"+
       "não há algo embaraçoso escrito escondido no meio do texto. Todos os geradores de Lorem"+
        "Ipsum na internet tendem a repetir pedaços predefinidos conforme necessário,"+
         "fazendo deste o primeiro gerador de Lorem Ipsum autêntico da internet."+
         "Ele usa um dicionário com mais de 200 palavras em Latim combinado com um punhado de modelos"+
          "de estrutura de frases para gerar um Lorem Ipsum com aparência razoável, livre de repetições,"+ 
          "inserções de humor, palavras não características, etc.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Empresa'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Image.asset('images/detalhe_empresa.png'),
                  Text('Sobre a Empresa',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red
                  )),
                ]
              ),
            ),

            Text(text, 
              style: TextStyle(
                fontSize: 25
              ),
            )
          ],
        )
      ),
      )
    );
  }
}