import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget();

  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC;
  int radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          buildCheckbox(),
          Divider(),
          buildRadio(),
        ],
      );

  Widget buildCheckbox() => Align(
        alignment: const Alignment(0.0, -0.2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Checkbox(
                  value: checkboxValueA,
                  onChanged: (bool value) {
                    setState(() {
                      checkboxValueA = value;
                    });
                  },
                ),
                Checkbox(
                  value: checkboxValueB,
                  onChanged: (bool value) {
                    setState(() {
                      checkboxValueB = value;
                    });
                  },
                ),
                Checkbox(
                  value: checkboxValueC,
                  tristate: true,
                  onChanged: (bool value) {
                    setState(() {
                      checkboxValueC = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                // Disabled checkboxes
                Checkbox(value: true, onChanged: null),
                Checkbox(value: false, onChanged: null),
                Checkbox(value: null, tristate: true, onChanged: null),
              ],
            )
          ],
        ),
      );

  Widget buildRadio() => Align(
        alignment: const Alignment(0.0, -0.2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Radio<int>(
                    value: 0,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),
                Radio<int>(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),
                Radio<int>(
                    value: 2,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged)
              ],
            ),
            // Disabled radio buttons
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Radio<int>(value: 0, groupValue: 0, onChanged: null),
                Radio<int>(value: 1, groupValue: 0, onChanged: null),
                Radio<int>(value: 2, groupValue: 0, onChanged: null)
              ],
            )
          ],
        ),
      );
}
