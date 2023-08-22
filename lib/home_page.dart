import 'package:flutter/material.dart';
import 'package:portafolio_flutter_02/top_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  double pixels = 0.0;

  bool _isNavbarAtTop = false;

  _scrollListener() {
    setState(() {
      _isNavbarAtTop = _scrollController.offset > 0;

       pixels = _scrollController.position.pixels;
        print(_scrollController.position.pixels);
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 75),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: _isNavbarAtTop ? 58 : screenSize.height,

                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade50,
                          width: 0.5,
                          
                      ),
                    ),
                  ),

             child: const TopBar(),

        ),
              
      ),      

      body: SingleChildScrollView(

        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,           
                
                decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF2196F3),
            Color(0xFFA9A9A9),
          ],
        ),
      ),

        child: AnimatedOpacity(
                            opacity: pixels >=100 ? 0.0 : 1.0,
                            duration: Duration (milliseconds: 1200),
                            child: AnimatedPadding(
                                duration: Duration (milliseconds: 1200),
                                padding: EdgeInsets.only(
                                right: pixels >=10 ? 1000.0 : 0.0),

                        child: Center(
                          child: Text(
                            'Sección 1',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                      ),
                    ),
                  ),

              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,   
                color: Colors.blue,
                
                child: Center(
                  child: Text(
                    'Sección 2',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,   
                color: Colors.green.shade300,
                
                child: Center(
                  child: Text(
                    'Sección 3',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),            
          ],
        ),
      ),
    );
  }
}