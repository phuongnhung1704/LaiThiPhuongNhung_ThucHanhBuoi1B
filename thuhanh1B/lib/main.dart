import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}
class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}
class _MyHomeScreenState extends State<MyHomeScreen> {
  bool showImages = false;
  bool isButtonPressed = false;

  void _onButtonPressed() {
    setState(() {
      isButtonPressed = !isButtonPressed;
      showImages = isButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: 390,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Screen',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 30,
              ),
              isButtonPressed
                  ? Column(
                children: [
                  Image.network(
                      'https://i.pinimg.com/564x/62/d6/15/62d615adf5e016acc6e75a8006d9cd01.jpg',
                      width: 170),
                  SizedBox(
                    height: 30,
                  ),
                  Image.network(
                      'https://i.pinimg.com/564x/0c/19/15/0c1915de3b4a096c08a703525c06a5e7.jpg',
                      width: 170),
                  SizedBox(
                    height: 30,
                  ),
                  Image.network(
                      'https://i.pinimg.com/564x/e2/a0/01/e2a001cf4605c547a029df34bc0575fb.jpg',
                      width: 170),
                ],
              )
                  : SizedBox(),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  _onButtonPressed();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(isButtonPressed ? 'Click Here' : 'Click Here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.yellow,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.lightGreen,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.deepOrange,
        height: 100,
        width: 100,
      )
    ],
  );
}
