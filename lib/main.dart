import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Align y Center'),
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: CuadrosColores(),
      ),
    );
  }
}

class CuadrosColores extends StatefulWidget {
  @override
  _CuadrosColoresState createState() => _CuadrosColoresState();
}

class _CuadrosColoresState extends State<CuadrosColores> {
  // Posiciones iniciales de los cuadros
  Offset _position1 = Offset(0.72, 0.20);
  Offset _position2 = Offset(0.43, 0.03);
  Offset _position3 = Offset(0.0, 0.36);
  Offset _position4 = Offset(0.72, 0.76);

  // Tamaño de los cuadros
  final double _size = 100.0;

  void _updatePosition(Offset newPosition, int index) {
    setState(() {
      switch (index) {
        case 1:
          _position1 = newPosition;
          break;
        case 2:
          _position2 = newPosition;
          break;
        case 3:
          _position3 = newPosition;
          break;
        case 4:
          _position4 = newPosition;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Cuadro 1 (Rojo)
        Positioned(
          left: _position1.dx * MediaQuery.of(context).size.width,
          top: _position1.dy * MediaQuery.of(context).size.height,
          child: GestureDetector(
            onPanUpdate: (details) {
              _updatePosition(
                Offset(
                  (_position1.dx * MediaQuery.of(context).size.width +
                          details.delta.dx) /
                      MediaQuery.of(context).size.width,
                  (_position1.dy * MediaQuery.of(context).size.height +
                          details.delta.dy) /
                      MediaQuery.of(context).size.height,
                ),
                1,
              );
            },
            child: Container(
              width: 103,
              height: 103,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.ac_unit, size: 30, color: Colors.black),
              ),
            ),
          ),
        ),
        // Cuadro 2 (Amarillo)
        Positioned(
          left: _position2.dx * MediaQuery.of(context).size.width,
          top: _position2.dy * MediaQuery.of(context).size.height,
          child: GestureDetector(
            onPanUpdate: (details) {
              _updatePosition(
                Offset(
                  (_position2.dx * MediaQuery.of(context).size.width +
                          details.delta.dx) /
                      MediaQuery.of(context).size.width,
                  (_position2.dy * MediaQuery.of(context).size.height +
                          details.delta.dy) /
                      MediaQuery.of(context).size.height,
                ),
                2,
              );
            },
            child: Container(
              width: 110,
              height: 110,
              color: Colors.yellow,
              child: Center(
                child: Icon(Icons.alarm, size: 40, color: Colors.black),
              ),
            ),
          ),
        ),
        // Cuadro 3 (Café)
        Positioned(
          left: _position3.dx * MediaQuery.of(context).size.width,
          top: _position3.dy * MediaQuery.of(context).size.height,
          child: GestureDetector(
            onPanUpdate: (details) {
              _updatePosition(
                Offset(
                  (_position3.dx * MediaQuery.of(context).size.width +
                          details.delta.dx) /
                      MediaQuery.of(context).size.width,
                  (_position3.dy * MediaQuery.of(context).size.height +
                          details.delta.dy) /
                      MediaQuery.of(context).size.height,
                ),
                3,
              );
            },
            child: Container(
              width: 450,
              height: 500,
              color: Colors.brown,
            ),
          ),
        ),
        // Cuadro 4 (Verde)
        Positioned(
          left: _position4.dx * MediaQuery.of(context).size.width,
          top: _position4.dy * MediaQuery.of(context).size.height,
          child: GestureDetector(
            onPanUpdate: (details) {
              _updatePosition(
                Offset(
                  (_position4.dx * MediaQuery.of(context).size.width +
                          details.delta.dx) /
                      MediaQuery.of(context).size.width,
                  (_position4.dy * MediaQuery.of(context).size.height +
                          details.delta.dy) /
                      MediaQuery.of(context).size.height,
                ),
                4,
              );
            },
            child: Container(
              width: 103,
              height: 103,
              color: Colors.green,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.ac_unit, size: 30, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
