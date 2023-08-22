import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {

  // ignore: use_key_in_widget_constructors
  const TopBar();

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        //color: /*Colors.white.withOpacity(0.5)*/Colors.grey.shade400,

decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF2196F3),
            Color(0xFFA9A9A9),
          ],
        ),
      ),

        child: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width/30,),
                  const Text(
                    'John F. Igua {Desarrollador}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                    ),
                  ),

                  SizedBox(width: screenSize.width / 3),

                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[1] = true
                            : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: _isHovering[1]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[2] = true
                            : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Acerca de Mi',
                          style: TextStyle(
                              color: _isHovering[2]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  SizedBox(width: screenSize.width /20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[3] = true
                            : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Mis Proyectos',
                          style: TextStyle(
                              color: _isHovering[3]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[4] = true
                            : _isHovering[4] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contactame',
                          style: TextStyle(
                              color: _isHovering[4]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[4],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),

          ),

      );
  }
}