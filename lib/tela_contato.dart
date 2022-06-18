import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({ Key? key }) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Contato'),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              
              biuldDetalhe(),

              biuldTexto()
            ],
          ),
        ),
      ),
    );
  }

  Widget biuldDetalhe() => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: Row(
      children: [
        Image.asset('assets/images/detalhe_contato.png'),
        const Text(
          'Contato',
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none
           ),
        )
      ]
    ),
  );

  Widget biuldTexto() => Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget> [
          Text(
            'Email: consultoria@atm.com.br',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            decoration: TextDecoration.none
            ),
          ),
          Text('Telefone: (11) 3333-2222'),
          Text('Celular: (11) 99999-8888')
        ],
      ),
    ),
  );
  
}