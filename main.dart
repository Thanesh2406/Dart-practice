import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Than(),
  ));
}

// ignore: use_key_in_widget_constructors
class Than extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* leading: Icon
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),*/
        title: const Text("Tuiton Management System"),
      ),

      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Column(
        children: <Widget>[
          const Text(
            "Welcome to Ceria Tuiton Centre",
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      )),

      drawer: Drawer(
        child: Column(children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ceria Tuiton Centre"),
            accountEmail: Text("Ceria@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('Cer'),
            ),
          ),
          ListTile(
            title: Text("Payment"),
            leading: Icon(Icons.payment),
          ),
          ListTile(
            title: Text("Student List"),
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: Text("Payment record"),
            leading: Icon(Icons.payment),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Secondpage()));
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class Secondpage extends StatelessWidget {
  bool a = false;
  bool b = false;
  bool c = false;

  Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subjects list"),
      ),
    );
  }
}
