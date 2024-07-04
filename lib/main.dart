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
        title: Text(
          widget.title,
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.00,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://image.sciencenorway.no/245115.webp?imageId=245115&width=2116&height=1208&format=webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: MediaQuery.of(context).size.width * 0.30,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1309328823/fr/photo/verticale-headshot-de-lemploy%C3%A9-masculin-de-sourire-dans-le-bureau.jpg?s=612x612&w=0&k=20&c=hCqYTwKfIW4Fp6_j_P-p8kMXB4b0H3mrajayCBd7JJw='),
                    radius: 50,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Valentin Folliguet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In erat odio, egestas sit amet velit id, fringilla.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          softWrap: true,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15)),
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.blue),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.blue)
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Modifier le profil',
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)
                            ),
                            foregroundColor: WidgetStateProperty.all<Color>(
                                Colors.blue
                            ),
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(color: Colors.blue)
                                )
                            )
                        ),
                        onPressed: () {},
                        child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      )
                    )
                  ],
                ),
                const Column(children: [
                  Text('A propos de moi ...', textAlign: TextAlign.start),
                  Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.house,
                        ),
                        Text('Annecy le view, France'),
                      ],
                    ),
                    Row(children: [
                                            Icon(Icons.work),
                                            Text('Développeur polyvalent / Formateur'),
                                          ]),
                    Row(children: [
                                            Icon(
                    Icons.favorite,
                                            ),
                                            Text('En couple'),
                                          ])
                  ]),
                ]),
                Column(children: [
                  const Row(children: [
                    Text('Amis'),
                  ]),
                  Row(children: [
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.purple,
                    ),
                    Container(
                      color: Colors.brown,
                    )
                  ])
                ])
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
