import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Practice(),
  ));
}

// ignore: use_key_in_widget_constructors
class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //create a widget named button Section to create buttons
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            Colors.amber, Icons.sports_football, 'Not Available'),
        const SizedBox(width: 50),
        _buildButtonColumn(
            Colors.black, Icons.sports_basketball, '50% Available'),
        const SizedBox(width: 50),
        _buildButtonColumn(Colors.blue, Icons.sports_baseball, '75% Available'),
      ],
    );
    //Created another row of buttons named buttonSectionB
    Widget buttonSectionB = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            Colors.black, Icons.sports_football, '50% Available'),
        const SizedBox(width: 50),
        _buildButtonColumn(
            Colors.amber, Icons.sports_basketball, 'Not Available'),
        const SizedBox(width: 50),
        _buildButtonColumn(Colors.blue, Icons.sports_baseball, '75% Available'),
      ],
    );
    //Created another row of buttons named buttonSectionC
    Widget buttonSectionC = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.sports_football, '75% Available'),
        const SizedBox(width: 50),
        _buildButtonColumn(
            Colors.amber, Icons.sports_basketball, 'Not Available '),
        const SizedBox(width: 50),
        _buildButtonColumn(
            Colors.black, Icons.sports_baseball, '50% Available'),
      ],
    );

    //Create a widget for list of court names (3 containers)
    Widget place = Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 50,
            color: Color.fromARGB(206, 217, 228, 204),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Rugby Court',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            height: 50,
            color: const Color.fromARGB(206, 217, 228, 204),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Baseball court',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            height: 50,
            color: const Color.fromARGB(206, 217, 228, 204),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Futsal Court',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    //Created a widget to call back the 4 widgets (buttonSection and list of Courts )
    Widget B = Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: place,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: buttonSection,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: buttonSectionB,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: buttonSectionC,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: buttonSectionB,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: buttonSection,
        ),
      ],
    );

//Create a Column widget for time
    Widget time = Padding(
      padding: const EdgeInsets.only(
        top: 230,
        left: 20,
        right: 0,
        bottom: 50,
      ),
      child: Column(children: [
        Container(
          width: 100,
          height: 50,
          color: const Color.fromARGB(206, 204, 217, 228),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              '8.00 am',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          color: const Color.fromARGB(206, 204, 217, 228),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              '12 pm',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 100,
          height: 50,
          color: const Color.fromARGB(206, 204, 217, 228),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              '4 pm',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 100,
          height: 50,
          color: const Color.fromARGB(206, 204, 217, 228),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              '8 pm',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 100,
          height: 50,
          color: const Color.fromARGB(206, 204, 217, 228),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              '12 am',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ]),
    );
//Scaffold class
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Practice'),
      ),
      //Integrate all the widgets into row widget in scaffold class
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [time, const SizedBox(width: 50), B]),
      ),
    );
  }

  //Create column widget to set the value of the buttons
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
