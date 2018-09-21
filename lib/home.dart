import 'package:flutter/material.dart';
import 'login.dart';
import 'shop.dart';
class  home extends StatefulWidget {
  static String tag ='home';
  @override
  _homeState createState() => _homeState();
}
class _homeState extends State<home>{
  @override
  Widget build(BuildContext context) {
   final logo  = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 48.0,
          backgroundColor: Colors.transparent,
          //backgroundImage: AssetImage('assets/logo.png'),
          child:  Image.asset('assets/logo.png'),
        ),
      ),
    ); 
    
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child:  Text(
        'Welcome 4EV',
        style: TextStyle(fontSize: 28.0,color: Colors.white),

      ),
    );
    
    final lorem  = Padding(
      padding: EdgeInsets.all(8.0),
      child:  Text(
        'description',
        style:  TextStyle(fontSize: 16.0,color:  Colors.white),

      ),
    );
   
   final qRButton = Padding(
        padding:  EdgeInsets.symmetric(vertical:  24.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.green.shade100,
          elevation:  5.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: (){
                Navigator.of(context).pushNamed(Shop.tag);
            },
            //color: Colors.green,
            child: Text('Pay By QR',style: TextStyle(color: Colors.green)),

          ),
        ),
    );

   final logoutButton = Padding(
        padding:  EdgeInsets.symmetric(vertical:  24.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.green.shade100,
          elevation:  5.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: (){
                Navigator.of(context).pushNamed(Login.tag);
            },
            //color: Colors.green,
            child: Text('Log Out',style: TextStyle(color: Colors.green)),

          ),
        ),
    );


   final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[logo, welcome, lorem, qRButton ,logoutButton],
      ),
    );
    
    

    return Scaffold(
      body: body,
    );

  }
}