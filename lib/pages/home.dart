import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi aplicacion'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _num1,
              decoration: const InputDecoration(
                labelText: 'Numero 1',
              ),
            ),
            TextField(
              controller: _num2,
              decoration: const InputDecoration(
                labelText: 'Numero 2',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var num1 = double.parse(_num1.text);
                  var num2 = double.parse(_num2.text);
                  var suma = num1 + num2;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Resultado'),
                        content: Text('La suma es: $suma'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cerrar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Sumar'))
          ],
        ));
  }
}
