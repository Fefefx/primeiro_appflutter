import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-lanche',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cardápio'),
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
  int _counter = 0;
  int _counterCoke = 0;
  int _counterHamburguer = 0;
  int _counterSnack = 0;

  void _incrementCoke() {
    setState(() {
      _counterCoke++;
      _counter++;
    });
  }

  void _decrementCoke() {
    setState(() {
      if (_counterCoke > 0) {
        _counterCoke--;
        _counter--;
      }
    });
  }

  void _incrementHamburguer() {
    setState(() {
      _counterHamburguer++;
      _counter++;
    });
  }

  void _decrementHamburguer() {
    setState(() {
      if (_counterHamburguer > 0) {
        _counterHamburguer--;
        _counter--;
      }
    });
  }

  void _incrementSnack() {
    setState(() {
      _counterSnack++;
      _counter++;
    });
  }

  void _decrementSnack() {
    setState(() {
      if (_counterSnack > 0) {
        _counterSnack--;
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title:
              Text(widget.title, style: const TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: <Widget>[
                  const Text(
                    'Quantidade de itens do cliente',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                          width: 200,
                          child: Row(
                            children: <Widget>[
                              const Text(
                                'Qtd Coca-cola: ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                              Text('$_counterCoke',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 16)),
                            ],
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            child: TextButton(
                                onPressed: _incrementCoke,
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.green),
                                child:
                                    const Icon(Icons.add, color: Colors.white)),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: TextButton(
                                  onPressed: _decrementCoke,
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  child: const Icon(Icons.remove,
                                      color: Colors.white)))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: <Widget>[
                Column(children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: Row(children: <Widget>[
                      const Text(
                        'Qtd Hambúrguer: ',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text('$_counterHamburguer',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16)),
                    ]),
                  )
                ]),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: TextButton(
                                  onPressed: _incrementHamburguer,
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.green),
                                  child: const Icon(Icons.add,
                                      color: Colors.white)),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: TextButton(
                                    onPressed: _decrementHamburguer,
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.red),
                                    child: const Icon(Icons.remove,
                                        color: Colors.white)))
                          ],
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: Row(children: <Widget>[
                        const Text(
                          'Qtd Lanche: ',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                        Text('$_counterSnack',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16)),
                      ]),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        child: TextButton(
                            onPressed: _incrementSnack,
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.green),
                            child: const Icon(Icons.add, color: Colors.white)),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: TextButton(
                              onPressed: _decrementSnack,
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.red),
                              child: const Icon(Icons.remove,
                                  color: Colors.white)))
                    ]),
                  ],
                )
              ]),
            )
          ]),
        ));
  }
}
