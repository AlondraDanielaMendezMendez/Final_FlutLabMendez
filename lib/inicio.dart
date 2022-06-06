import 'package:flutter/material.dart';
import 'package:mendez/main.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF083131),
        automaticallyImplyLeading: true,
        title: Text(
          'Inicio',
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.white,
            fontSize: 20,
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

      backgroundColor: Color(0xFF006064),
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
                      child: SingleChildScrollView(
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
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Bienvenido a WebMaker App',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      children: [
                        PageView(
                          /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                          /// Use [Axis.vertical] to scroll vertically.
                          controller: controller,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/page1.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/page2.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                          child: Text(
                            'Nuevo',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFF083131),
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    /*await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Producto8Widget(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6E6E6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Widgets',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              color: Color(0xFF006064),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                            child: Image.asset(
                                              'assets/icon7.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                            child: Text(
                                              'Aplicaciones pequeñas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Oswald',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    /*await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Producto7Widget(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6E6E6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Código Base',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              color: Color(0xFF006064),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                            child: Image.asset(
                                              'assets/icon8.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                            child: Text(
                                              'Código para determinado uso',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Oswald',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Text(
                            'Destacados',
                            style: TextStyle(
                              fontFamily: 'Oswald',
                              color: Color(0xFF083131),
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    /*await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Producto5Widget(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6E6E6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'App Móvil',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              color: Color(0xFF006064),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                            child: Image.asset(
                                              'assets/icon4.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                            child: Text(
                                              'Apps para portátiles',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Oswald',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    /*await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Producto4Widget(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6E6E6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'App Web',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              color: Color(0xFF006064),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                            child: Image.asset(
                                              'assets/icon5.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                            child: Text(
                                              'Aplicaciones para navegador web',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Oswald',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    /*await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Producto1Widget(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6E6E6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Database',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Oswald',
                                              color: Color(0xFF006064),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                            child: Image.asset(
                                              'assets/icon1.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                            child: Text(
                                              'Manejo de datos digitales',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Oswald',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                ),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
