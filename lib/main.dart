import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(Workflow_automator());

class Workflow_automator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Signup())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/Logo.png'),
          ),
          Text(
            'Version 1 . 2 . 1 . 0',
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Poppins',
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}

//Its the Home Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(243, 243, 243, 1),
        notchMargin: 10,
        // make rounded corners & create a notch for the floating action button
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          StadiumBorder(),
        ),
        child: IconTheme(
          data: const IconThemeData(color: Colors.white, size: 36),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add_alt_1_outlined,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "                       ",
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),

      // implement the big floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Container(
          child: Icon(
            Icons.add,
            // size: 60.0,
            color: Colors.black,

            // shadows: [ Shadow(color: Colors.white)],
            //
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 7,
                blurRadius: 7,
                offset: Offset(3, 5),
              )
            ],
          ),
        ),
        // child: const Icon(
        //     Icons.add,
        //     color: Colors.black,
        // ),
      ),
      // position the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 32.0),
              child: Text(
                'Hello User,',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 30.0),
              child: Image(
                image: AssetImage('assets/pic2.jpg'),
                height: 190.0,
                width: 380.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 10.0),
              child: Text(
                'Your Courses :',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'MA1101 ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'ME1100 ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'PH1010 ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'PH1030',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'ID2090',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'CY1002',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'FINE ARTS',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: SizedBox(
                      height: 70,
                      width: 157,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 238, 254, 1),
                          shadowColor: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(220, 151, 226, 1),
                              width: 3.0),
                        ),
                        child: Text(
                          'ID1200',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ]),
    );
  }
}

//Here is the Signup Page for the app
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100, left: 20),
        child: Container(
          height: 642,
          width: 320,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(220, 90, 227, 1),
                Color.fromRGBO(194, 196, 245, 1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 7),
                child: SizedBox(
                  width: 300.0,
                  height: 94.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 5.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'RollNo.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 7),
                child: SizedBox(
                  width: 300.0,
                  height: 94.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Smail id:',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 7),
                child: SizedBox(
                  width: 300.0,
                  height: 94.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 7, bottom: 14),
                child: Column(children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      fillColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'already have an account ?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(220, 90, 227,
                                    0.5) //Color.fromRGBO(220,90,227,1),
                                ),
                            onPressed: () {},
                            child: Text(
                              'login',
                              style: TextStyle(
                                color: Colors.green[200],
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                child: SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(236, 49, 127, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Text(
                      'sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Signup Page is over

// The login page starts here

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
