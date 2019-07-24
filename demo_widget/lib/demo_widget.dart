import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget();

  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  bool _checkboxValueA = true;
  bool _checkboxValueB = false;
  bool _checkboxValueC;
  int _radioValue = 0;

  int _clickCount = 0;

  final _textController = TextEditingController();

  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  void _click() {
    setState(() {
      _clickCount++;
    });
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildCheckbox(),
              Divider(),
              _buildRadio(),
              Divider(),
              FlatButton(
                child: Text(_clickCount.toString()),
                onPressed: _click,
              ),
              RaisedButton(
                child: Text(_clickCount.toString()),
                onPressed: _click,
              ),
              FloatingActionButton.extended(
                onPressed: _click,
                label: Text(_clickCount.toString()),
              ),
              Divider(),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Enter some text',
                ),
              )
            ],
          ),
        ),
      );

  Widget _buildCheckbox() => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Checkbox(
            value: _checkboxValueA,
            onChanged: (bool value) {
              setState(() {
                _checkboxValueA = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxValueB,
            onChanged: (bool value) {
              setState(() {
                _checkboxValueB = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxValueC,
            tristate: true,
            onChanged: (bool value) {
              setState(() {
                _checkboxValueC = value;
              });
            },
          ),
        ],
      );

  Widget _buildRadio() => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Radio<int>(
              value: 0,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChanged),
          Radio<int>(
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChanged),
          Radio<int>(
              value: 2,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChanged),
        ],
      );
}
