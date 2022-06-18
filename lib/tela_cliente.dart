import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({ Key? key }) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Clientes'),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              
              biuldDetalhe(),

              cliente1(),

              cliente2()
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
        Image.asset('assets/images/detalhe_cliente.png'),
        const Text(
          'Nossos Clientes',
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none
           ),
        )
      ]
    ),
  );

  Widget cliente1() => Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [

          Image.asset('assets/images/cliente1.png'),

          const Text(
            'Empresa de Software',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            decoration: TextDecoration.none
            ),
          ),
        ],
      ),
    ),
  );

  Widget cliente2() => Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [

          Image.asset('assets/images/cliente2.png'),

          const Text(
            'Empresa de Auditoria',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            decoration: TextDecoration.none
            ),
          ),
        ],
      ),
    ),
  );
  
}