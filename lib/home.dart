import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contador = 0;
  int _contador2 = 0;
  int _win = 0;
  int _win2 = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/fundo.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                _reset();
              },
              child: Text(
                "Resetar contadores",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  " : $_contador",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        onPressed: () {
                          _contaTruco(1);
                        },
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _contaTruco(3);
                          },
                          child: Text(
                            "+3",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))),
                ]),
                Text(
                  "Vitorias: $_win",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  " : $_contador2",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        onPressed: () {
                          _contaTruco2(1);
                        },
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _contaTruco2(3);
                          },
                          child: Text(
                            "+3",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))),
                ]),
                Text(
                  "Vitorias: $_win2",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  void _contaTruco(int valor) {
    setState(() {
      _contador += valor;
    });
    if (_contador >= 12) {
      _contador = 0;
      _contador2 = 0;
      _win += 1;
    }
  }

  void _contaTruco2(int valor2) {
    setState(() {
      _contador2 += valor2;
    });
    if (_contador2 >= 12) {
      _contador = 0;
      _contador2 = 0;
      _win2 += 1;
    }
  }

  void _reset() {
    setState(() {
      _win = 0;
      _win2 = 0;
      _contador = 0;
      _contador2 = 0;
    });
  }
}
