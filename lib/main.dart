import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise First UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: NetworkImage('https://image.sciencenorway.no/245115.webp?imageId=245115&width=2116&height=1208&format=webp'),
          ),
          Expanded(
            child: Column(
              children: [
                const Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Valentin Folliguet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In erat odio, egestas sit amet velit id, fringilla.',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    children: [
                      Text('Modifier le profil'),
                      Text('+'),
                    ],
                  ),
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Text('A propos de moi ...'),
                      ),
                      /*Expanded(
                        child: Column(
                          children: [
                            Text('Annecy le view, France'),
                            Text('Développeur polyvalent / Formateur'),
                            Text('En couple'),
                          ]
                        )
                      ),*/
                    ]
                  )
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Expanded(
                        child: Row(
                          children: [
                            Text('Amis'),
                          ]
                        )
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.yellow,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.purple,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.brown,
                              )
                            )
                          ]
                        )
                      )
                    ]
                  )
                )
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
