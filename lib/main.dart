import 'package:flutter/material.dart';
import 'package:mendez/iniciarsesion.dart';
import 'package:mendez/empleados.dart';
import 'package:mendez/registro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'WebMaker',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF006064),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Image.asset(
                          'assets/logo.png',
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.2,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        'WebMaker App',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                    child: Text(
                      'Bienvenidos a WebMaker App',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                    child: Text(
                      'Si tienes una cuenta INICIA SESIÓN, de lo contrario crea una cuenta de USUARIO o EMPLEADO si quieres unirte a nuestro equipo',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Color(0xFFBABABA),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 20),
                      height: 70,
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.arrow_left),
                        label: Text("REGISTRO USUARIO"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThirdRoute()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF083131),
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 20),
                      height: 70,
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.arrow_left),
                        label: Text("REGISTRO EMPLEADO"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FourthRoute()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF083131),
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 20),
                      height: 70,
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.arrow_left),
                        label: Text("INICIA SESIÓN"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondRoute()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color(0xFF083131),
                          primary: Colors.white,
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
