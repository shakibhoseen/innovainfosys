import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:small_home_application/res/constant.dart';

class CustomSwitchButton extends StatefulWidget {
  final ValueChanged<bool> onChanged;

   const CustomSwitchButton({super.key,
    required this.onChanged,
  });

  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton>
    with SingleTickerProviderStateMixin {
  final double _switchHeight = 30;

  final double _switchWidth = 65;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  Color lightOnColor = Colors.green.shade300;
  Color deepOnColor = Colors.green.shade900;

  Color lightOffColor = Colors.red.shade300;
  Color deepOffColor = Colors.red.shade900;

  bool _isOn = false;

  @override
  void initState() {
    super.initState();
  }

  void _toggleSwitch() {
    setState(() {
      _isOn = !_isOn;
    });

    widget.onChanged(_isOn);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: Container(
        width: _switchWidth ,
        height: _switchHeight ,
        //padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: _isOn ? lightOnColor : lightOffColor,
          borderRadius: BorderRadius.circular(25),
          border:
              Border.all(color: _isOn ? deepOnColor : deepOffColor, width: 2),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              top: 0,
              bottom: 0,
              left: _isOn ? -(_switchWidth - _switchHeight) : 0,
              duration: _animationDuration,
              child: SizedBox(
                height: _switchHeight,
                width: _switchWidth - _switchHeight,
                child: Center(
                  child: Text(
                    'OFF',
                    style: Constant.popins_lg(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              top: 0,
              bottom: 0,
              left: _isOn ? -3 : _switchWidth-2 - _switchHeight,
              duration: _animationDuration,
              child: AnimatedRotation(
                turns: _isOn ? -.2 : .2,
                duration: _animationDuration,
                child: SvgPicture.asset(
                  'assets/images/ic_round_radio.svg',
                  width: _switchHeight,
                  height: _switchHeight,
                  color: _isOn ? deepOnColor : deepOffColor,
                ),
              ),
            ),
            AnimatedPositioned(
                top: 0,
                bottom: 0,
                right: _isOn ? 0 : -(_switchWidth - _switchHeight),
                duration: _animationDuration,
                child: SizedBox(
                  height: _switchHeight,
                  width: _switchWidth - _switchHeight,
                  child: Center(
                    child: Text(
                      'ON',
                      style: Constant.popins_lg(fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
