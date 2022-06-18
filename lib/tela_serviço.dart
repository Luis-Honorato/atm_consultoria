import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({ Key? key }) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Serviços'),
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
        Image.asset('assets/images/detalhe_servico.png'),
        const Text(
          'Nossos Serviços',
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
            'Consultoria',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            decoration: TextDecoration.none
            ),
          ),
          Text('Preços'),
          Text('Acompanhamento de Projetos')
        ],
      ),
    ),
  );
  
}