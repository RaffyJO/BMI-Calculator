import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

double rating = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(
          // title: Center(child: Text("BMI CALCULATOR")),
          // backgroundColor: Colors.deepPurple,
          ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;
  int _counterAge = 0;
  final int _sex = 0;
  int _index = 0;
  bool _isRaffy = false;
  bool _isFemale = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _test2() {
    setState(() {
      _isFemale = !_isFemale;
      _isRaffy = false;
    });
  }

  void _testRaffy() {
    setState(() {
      _isRaffy = !_isRaffy;
      _isFemale = false;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  double _result() {
    double _hasil = 0;
      
    return _hasil;
  }

  void _warna() {
    setState(() {
      _index = 1;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counterAge++;
    });
  }

  void _decrementCounter1() {
    setState(() {
      _counterAge--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("BMI CALCULATOR")),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _testRaffy();
                    // _cek();
                    print("is raffy => $_isRaffy");
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      color: (_isRaffy) ? Colors.amber : Colors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.male),
                          Text("MALE", style: TextStyle(fontSize: 20)),
                        ],
                      )),
                ),
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  _test2();
                  // _cek();
                  print("is test => $_isFemale");
                },
                child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: (_isFemale) ? Colors.amber : Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.female),
                        Text("FEMALE", style: TextStyle(fontSize: 20)),
                      ],
                    )),
              ))
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              color: Colors.purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    rating.round().toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                  Slider(
                    value: rating,
                    onChanged: (newRating) {
                      newMethod(newRating);
                    },
                    label: "$rating",
                    min: 0,
                    max: 200,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT", style: TextStyle(fontSize: 20)),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                _decrementCounter();
                              },
                              backgroundColor: Colors.black,
                              child: const Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                _incrementCounter();
                              },
                              backgroundColor: Colors.black,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE", style: TextStyle(fontSize: 20)),
                          Text(
                            '$_counterAge',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  _decrementCounter1();
                                },
                                backgroundColor: Colors.black,
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  _incrementCounter1();
                                },
                                backgroundColor: Colors.black,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      )))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.red,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("CALCULATE YOUR BMI")],
                  ),
                ),
              )),
            ],
          )
        ],
      )),
    );
  }

  newMethod(double newRating) => setState(() => rating = newRating);
}

class StatefullWidget {}
