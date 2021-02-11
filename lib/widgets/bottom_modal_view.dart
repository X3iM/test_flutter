import 'package:flutter/material.dart';

class BottomModalView extends StatefulWidget {
  final Function changeBackgroundColor;

  const BottomModalView(this.changeBackgroundColor);

  @override
  _BottomModalViewState createState() => _BottomModalViewState();
}

class _BottomModalViewState extends State<BottomModalView> {
  double redSliderValue = 0;
  double greenSliderValue = 0;
  double blueSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 182,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Red'),
                Slider(
                  min: 0,
                  max: 255,
                  value: redSliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      redSliderValue = newValue;
                      widget.changeBackgroundColor(redSliderValue, greenSliderValue, blueSliderValue);
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Green'),
                Slider(
                  min: 0,
                  max: 255,
                  value: greenSliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      greenSliderValue = newValue;
                      widget.changeBackgroundColor(redSliderValue, greenSliderValue, blueSliderValue);
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Blue'),
                Slider(
                  min: 0,
                  max: 255,
                  value: blueSliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      blueSliderValue = newValue;
                      widget.changeBackgroundColor(redSliderValue, greenSliderValue, blueSliderValue);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
