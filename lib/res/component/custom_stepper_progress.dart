import 'package:flutter/material.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/my_colors.dart';

class CustomStepperProgress extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomStepperProgress> {
  double _value = 0.5;
  Color thumbColor = Colors.indigo.shade900;
  Color thumbInactiveColor = Colors.grey;
  double stepperHeight = 12;
  double thumbHeight = 2;

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: thumbHeight,

                  decoration: BoxDecoration(
                    color: thumbInactiveColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),


                FractionallySizedBox(
                  widthFactor: _value,
                  child: Container(
                    height: thumbHeight,
                    decoration: BoxDecoration(
                      color: thumbColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 7; i++)
                      Container(
                        width: stepperHeight,
                        height: stepperHeight,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: MyShadow.boxShadow5(),
                          border: Border.all(color: Colors.white, width: 2),
                          color: _value >= (i + 1) / 7 ? thumbColor : Colors.grey,
                        ),
                      ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: CustomSliderThumbShape(
                      thumbRadius: 16.0,
                      backgroundColor: MyColors.mainColor,
                      borderColor: Colors.white,
                      borderWidth: 2.0,
                      boxShadow: MyShadow.boxShadow5(),
                    ),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0,),
                    //trackHeight: 12.0,
                    activeTrackColor: Colors.transparent, // Change the color of the active track
                    inactiveTrackColor: Colors.transparent,

                  ),
                  child: Slider(
                    value: _value,
                    min: 0.0,
                    max: 1.0,

                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                        print(_value);
                      });
                    },
                  ),
                ),
              ],
            ),


          ],
        ),
      );

  }

  Widget customSliderItem(){
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: CustomSliderThumbShape(
          thumbRadius: 16.0,
          backgroundColor: MyColors.mainColor,
          borderColor: Colors.white,
          borderWidth: 2.0,
          boxShadow: MyShadow.boxShadow5(),
        ),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0,),
        //trackHeight: 12.0,
        activeTrackColor: Colors.green, // Change the color of the active track
        inactiveTrackColor: Colors.grey,

      ),
      child: Slider(
        value: _value,
        min: 0.0,
        max: 1.0,

        onChanged: (newValue) {
          setState(() {
            _value = newValue;
            print(_value);
          });
        },
      ),
    );
  }
}


class CustomSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final List<BoxShadow> boxShadow;

  const CustomSliderThumbShape({
    required this.thumbRadius,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.boxShadow,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    for (final boxShadow in boxShadow) {
      final shadowPaint = Paint()
        ..color = boxShadow.color
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, boxShadow.blurRadius)
        ..style = PaintingStyle.fill;

      final RRect thumbRect = RRect.fromRectAndRadius(
        Rect.fromCenter(center: center, width: thumbRadius * 2, height: thumbRadius * 2),
        Radius.circular(thumbRadius),
      );

      canvas.drawRRect(thumbRect.shift(boxShadow.offset), shadowPaint);
    }

    canvas.drawCircle(center, thumbRadius, paint);
    canvas.drawCircle(center, thumbRadius, borderPaint);
  }

}

