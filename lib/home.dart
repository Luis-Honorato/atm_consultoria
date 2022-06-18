import 'package:atm_consultoria/tela_Cliente.dart';
import 'package:atm_consultoria/tela_Contato.dart';
import 'package:atm_consultoria/tela_Servi%C3%A7o.dart';
import 'package:atm_consultoria/tela_empresa.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => const TelaEmpresa()))
    );
  }

  void _abrirServico(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => const TelaServico()))
    );
  }

  void _abrirCliente(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => const TelaCliente()))
    );
  }

  void _abrirContato(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => const TelaContato()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),

      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [

          biuldLogo(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuEmpresa(),
              menuServicos()
            ],
          ),

          const Padding(padding: EdgeInsets.all(16)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuClientes(),
              menuContato()
            ],
          )

        ],
      ),
    );
  }

   Widget biuldLogo() => Image.asset(
    'assets/images/logo.png',
    width: 200,
    height: 150,
   );

  Widget menuEmpresa() => GestureDetector(
    child: Image.asset(
      'assets/images/menu_empresa.png'
    ),
    onTap: () {
      _abrirEmpresa();
    } ,
  );

  Widget menuServicos() => GestureDetector(
    child: Image.asset(
      'assets/images/menu_servico.png'
    ),
    onTap: () {
      _abrirServico();
    }
  );

  Widget menuClientes() => GestureDetector(
    child: Image.asset(
      'assets/images/menu_cliente.png'
      ),
    onTap: () {
      _abrirCliente();
    }
  );

  Widget menuContato() => GestureDetector(
    child: Image.asset(
      'assets/images/menu_contato.png'
      ),
    onTap: () {
      _abrirContato();
    }
  );
}