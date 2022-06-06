import 'package:flutter/material.dart';
import 'package:mendez/main.dart';
import 'package:mendez/conclusiones.dart';

class Acerca extends StatefulWidget {
  const Acerca({Key? key}) : super(key: key);

  @override
  _AcercaState createState() => _AcercaState();
}

class _AcercaState extends State<Acerca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006064),
        automaticallyImplyLeading: true,
        title: Text(
          'Acerca de',
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.login_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstRoute(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF083131),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/drawer.jpg',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
              Container(
                color: Color(0xFFB2DFDB),
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Container(
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/user.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '[Usuario]',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFF006064),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E381),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                              child: Text(
                                'Owner',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 20),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Icon(
                            Icons.track_changes,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Misión',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Text(
                        'WebMaker tiene como objetivo ayudar a todo aquellos que quieran comenzar a emprender por medio de nuevos medios como la tecnología llevandolos de la mano a tener éxito en su negocio o proyecto.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          color: Color(0xFFBABABA),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Visión',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Text(
                        'Ser la aplicación a la que más gente emprendedora ha llegado con el fin de involucrarse en los medios digitales actuales.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          color: Color(0xFFBABABA),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Text(
                            'WebMaker App by:',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFFBABABA),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'Alondra Daniela Méndez Méndez',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Color(0xFFBABABA),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Text(
                            'Grupo:',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFFBABABA),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          '6J',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            color: Color(0xFFBABABA),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/alumna.png'),
                            radius: 50,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Text(
                        'Copyright © 2022 WebMaker App ',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          color: Color(0xFFBABABA),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        height: 70,
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.arrow_left),
                          label: Text("CONCLUSIONES"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Conclusion()),
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
      ),
    );
  }
}
