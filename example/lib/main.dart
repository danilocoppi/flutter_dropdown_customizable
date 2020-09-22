import 'package:flutter/material.dart';
import 'package:dropdown_customizable/lib.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Custom Dropdown Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Customized Dropdown'),
              MyNormalDropDown(),
              SizedBox(
                height: 50,
              ),
              Text('Customized Dropdown w/ IgnoreOffset'),
              MyCustomDropDown()
            ],
          ),
        ),
      ),
    );
  }
}

class MyNormalDropDown extends StatefulWidget {
  MyNormalDropDown({Key key}) : super(key: key);

  @override
  _MyNormalDropDownState createState() => _MyNormalDropDownState();
}

class _MyNormalDropDownState extends State<MyNormalDropDown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return CustomDropdownButton<String>(
      value: dropdownValue,
      elevation: 0,
      dropdownMenuRadius: 22,
      dropdownMenuBorder: Border.all(color: const Color(0xFF00FF00), width: 4),
      dropdownMenuIgnoreOffset: false,
      dropdownMenuGradient:
          LinearGradient(colors: [Color(0xFFFF0000), Color(0xFFFFFFFF)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: ['One', 'Two', 'Free', 'Four'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyCustomDropDown extends StatefulWidget {
  MyCustomDropDown({Key key}) : super(key: key);

  @override
  _MyCustomDropDownState createState() => _MyCustomDropDownState();
}

class _MyCustomDropDownState extends State<MyCustomDropDown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return CustomDropdownButton<String>(
      value: dropdownValue,
      elevation: 12,
      dropdownMenuRadius: 0,
      dropdownMenuBorder: Border.all(color: const Color(0xFF0000FF), width: 2),
      dropdownMenuIgnoreOffset: true,
      dropdownMenuGradient:
          LinearGradient(colors: [Color(0xFF00FF00), Color(0xFFFFFF00)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: ['One', 'Two', 'Free', 'Four'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
