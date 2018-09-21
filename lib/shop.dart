import 'package:flutter/material.dart';
import 'package:fourev_app/scan.dart';
import 'package:fourev_app/generate.dart';
import 'package:flutter/rendering.dart';


class Shop extends StatefulWidget {
  static String tag = 'shop';
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
     
     final title = Padding(
      padding: EdgeInsets.all(8.0),
      child:  Text(
        'Connect Machine',
        style: TextStyle(fontSize: 28.0,color: Colors.white),

      ),
    );
    
    final logo  = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius:  48.0,
        child:  Image.asset('assets/logo.png'),
        
      ),
    );
    
   return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('QR Code Scanner & Generator'),
        ),
        
        body: Center(
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  title,
                  logo,
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          splashColor: Colors.blueGrey,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ScanScreen()),
                            );
                          },
                          child: const Text('SCAN QR CODE')
                      ),
                    ),
                   
                   Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          splashColor: Colors.blueGrey,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GenerateScreen()),
                            );
                          },
                          child: const Text('GENERATE QR CODE')
                      ),
                    ),
                ],
              )
          ),
        );
  }
}