import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var cedula = "1000474497";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(
        title: 'Perfil: ',
        nombre: "Daniel RoMo",
        cedula: cedula,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String cedula;
  final String nombre;
  const MyHomePage(
      {super.key,
      required this.title,
      required this.cedula,
      required this.nombre});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 8, 231, 194),
      appBar: AppBar(
        title: Text("${widget.title} - ${widget.nombre} - ${widget.cedula}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(widget.nombre),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_counter > 0) {
                        _counter--;
                      }
                    });
                  },
                  child: const Text("Restar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter = 0;
                    });
                  },
                  child: const Text("Reiniciar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: const Text("Sumar"),
                ),
              ],
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
