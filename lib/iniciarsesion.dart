import 'package:flutter/material.dart';
import 'package:mendez/registro.dart';
import 'package:mendez/inicio.dart';
import 'package:mendez/navbar.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          child: Image.asset(
            'assets/logo.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'WebMaker App',
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Color(0xFF006064),
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF006064),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Inicio de Sesión',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Bienvenidos de vuelta. Ingresa tus datos',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Color(0xFFBABABA),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Usuario',
                            labelStyle: TextStyle(color: Color(0xFF757575)),
                            hintText: 'Usuario',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF144A4C),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFB2DFDB),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Color(0xFF757575),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(color: Color(0xFF757575)),
                            hintText: 'Contraseña',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF144A4C),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFB2DFDB),
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Color(0xFF757575),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ThirdRoute()),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Text(
                                  '¿No tienes cuenta? ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Oswald',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Text(
                                  'Registrate',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Oswald',
                                    color: Color(0xFF083131),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              icon: Icon(Icons.arrow_right),
                              label: Text("INICIAR SESIÓN"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp()),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
