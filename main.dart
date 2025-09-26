import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {//nao alterar nada durante a aplicacao
  const MyApp({super.key});

  // Titulo da pagina
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de cliques',//titulo
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 26, 151, 253)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador de cliques'),//nome da nossa aplicacao na barra de menu
    );
  }
}

//onde consegue alterar o estado de uma aplicacao
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();//ele esta chamando myhome
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {

    setState(() {//estou chamando para renderizar um novo estado na minha aplicacao
      _counter++;
    });
  }

  // void _submitText(){
  //       setState(() {
  //       print(Text(TextFormField()));
  //   });
  // }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clique para contar: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Oi',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Digite Algo",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      
       // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Submit',
            child: const Icon(Icons.add_task_outlined),
          ),
        ],
        
        
      ),
    );
  }
}
