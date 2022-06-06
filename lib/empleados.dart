import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mendez/iniciarsesion.dart';
import 'package:mendez/navbar.dart';

class FourthRoute extends StatefulWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  _FourthRouteState createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  String? dropdownvalue;

// List of items in our dropdown menu
  var items = [
    'Programación',
    'Diseño Digital',
    'Manejo de Bases de Datos',
    'Diseño de apps móviles',
    'Diseño de páginas web',
    'Gestión de dominos',
  ];

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Registro para Empleados',
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
                            'Registra tus datos para empezar tu experiencia como trabajador en WebMaker.',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFFBABABA),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Nombre Completo',
                              labelStyle: TextStyle(color: Color(0xFF757575)),
                              hintText: 'Nombre Completo',
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
                                Icons.face,
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
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFB2DFDB),
                          ),
                          padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                          child: DropdownButton(
                            hint: Text("Especialidad"),
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                            isExpanded: true,
                            dropdownColor: Color(0xFFB2DFDB),
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
                            decoration: InputDecoration(
                              labelText: 'Correo',
                              labelStyle: TextStyle(color: Color(0xFF757575)),
                              hintText: 'Correo',
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
                                Icons.alternate_email,
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
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Teléfono',
                              labelStyle: TextStyle(color: Color(0xFF757575)),
                              hintText: 'Teléfono',
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
                                Icons.phone,
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
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Fecha de Nacimiento',
                              labelStyle: TextStyle(color: Color(0xFF757575)),
                              hintText: 'Fecha de Nacimiento',
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
                                Icons.calendar_today,
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
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Nacionalidad',
                              labelStyle: TextStyle(color: Color(0xFF757575)),
                              hintText: 'Nacionalidad',
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
                                Icons.flag,
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
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                          child: InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondRoute()),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Text(
                                    '¿Tienes cuenta? ',
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
                                    'Inicia Sesión',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                          child: Container(
                              height: 60,
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.arrow_right),
                                label: Text("REGISTRARSE"),
                                onPressed: () {
                                  Navigator.of(context).push(PageTransition(type: PageTransitionType.leftToRight, child: MyApp()));
                                },
                                style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.white,
                                  primary: Color(0xFF083131),
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
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
