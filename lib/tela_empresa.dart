import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({ Key? key }) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Empresa'),
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
        Image.asset('assets/images/detalhe_empresa.png'),
        const Text(
          'Sobre a Empresa',
           style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none
           ),
        )
      ]
    ),
  );

  Widget biuldTexto() => const Padding(
    padding: EdgeInsets.all(16),
    child: Text(''' 
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam felis libero, aliquet vitae leo et, pellentesque ultricies orci. Cras sed dolor est. Phasellus eu convallis quam. Aliquam quis nibh accumsan, fermentum mauris et, congue arcu. Donec malesuada commodo tortor quis scelerisque. Duis molestie scelerisque ex ac sollicitudin. Fusce vitae ante consectetur, congue dolor sit amet, vestibulum justo. Integer tempor, risus a ultrices posuere, velit urna pharetra ante, at pharetra augue eros in dolor. Fusce lacinia nibh nulla. Sed in odio turpis. In iaculis lobortis ex. Pellentesque venenatis diam in enim venenatis, quis pulvinar enim iaculis. Nullam non laoreet magna.
  
  Proin suscipit purus leo, eget bibendum diam lacinia ut. Mauris tempor consectetur pharetra. Nulla mattis auctor rhoncus. Etiam pharetra ornare orci, eu rutrum lectus condimentum fringilla. Aliquam euismod, quam quis tristique congue, lorem sem rutrum libero, at scelerisque orci lectus a felis. Cras eu lacus sit amet est facilisis aliquam. Etiam volutpat justo elit, pulvinar eleifend neque facilisis nec. Morbi eu eleifend massa. In ac tortor rhoncus, posuere tellus at, porta nunc. Etiam ultrices magna et augue gravida porttitor. Vivamus sed metus aliquet, euismod nulla vel, imperdiet nunc.
  
  In ut enim pharetra, bibendum tortor ac, dignissim justo. Morbi nec eros tincidunt sem tincidunt lacinia ut non libero. Curabitur id dui lacus. Sed eu ante a tellus semper dictum. Phasellus ultrices vulputate sapien, sed sagittis dui consectetur gravida. In hac habitasse platea dictumst. Phasellus rhoncus urna lectus, eget congue sapien tempor sed. Duis vel ante et nulla sollicitudin pulvinar laoreet vitae sem. Praesent aliquet vehicula lorem in tincidunt. Praesent in porttitor ante, et mollis ante. Morbi blandit non velit eget pulvinar. Aliquam id pretium quam, ac volutpat mauris. Etiam maximus nulla odio, id ullamcorper nisl posuere vitae. Fusce bibendum nunc vel erat pellentesque, ac cursus ex viverra. Sed eget feugiat nisi. Vivamus aliquam, dui ut porttitor mattis, elit risus ullamcorper elit, id luctus erat ante ut metus.
  
  Vivamus odio ipsum, ullamcorper ac maximus sed, pretium non arcu. Vivamus vitae ultricies sapien. Etiam at accumsan ipsum. Phasellus lobortis mattis orci quis porta. Curabitur cursus nisl non lorem lacinia consequat. Duis tristique bibendum tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla commodo, ex in suscipit efficitur, urna massa egestas lacus, vel ullamcorper turpis purus ut turpis. Maecenas augue eros, blandit quis ullamcorper id, accumsan quis orci. Donec porttitor quis urna sit amet aliquam. Donec tincidunt, mi eu fringilla viverra, nunc nunc finibus mauris, nec pharetra ipsum dui at orci. Nulla tristique urna interdum ante finibus, eget tincidunt risus congue. Ut ac ante hendrerit, ultricies nunc nec, dictum justo. Aliquam consectetur lorem et odio dignissim pretium. Pellentesque ac urna quis ante malesuada tempus.
  
  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed eget mauris et eros dignissim pharetra sit amet hendrerit turpis. Aenean mattis purus quis velit consectetur laoreet. Sed urna odio, tincidunt sed sem ultrices, dapibus vulputate nisi. Aliquam non odio vel velit rutrum gravida. Praesent a nibh eget sapien tempus faucibus id at ipsum. Nullam quis velit et justo gravida laoreet non at tortor. Maecenas tincidunt rutrum magna, eget bibendum massa ornare quis.
  
  ''',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        decoration: TextDecoration.none
      ),
  ),
  );
  
}