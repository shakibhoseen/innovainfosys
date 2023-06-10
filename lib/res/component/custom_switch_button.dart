import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/view_model/custom_switch_store_block.dart';

class CustomSwitchButton extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final bool isSwitchOn;

   CustomSwitchButton({
    Key? key,
    required this.onChanged,
    this.isSwitchOn = false,
  }) : super(key: key);

  final double _switchHeight = 30;
  final double _switchWidth = 65;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Color lightOnColor = MyColors.surfaceColor;
  final Color deepOnColor = MyColors.mainColor;
  final Color lightOffColor = MyColors.surface3Color;
  final Color deepOffColor = MyColors.main3Color;
  final CustomSwitchStoreBlock _switchStoreBlock = CustomSwitchStoreBlock();
  @override
  Widget build(BuildContext context) {
    bool _isOn = isSwitchOn;

    void _toggleSwitch() {
      _isOn = !_isOn;
      onChanged(_isOn);
      _switchStoreBlock.setSwitchState(_isOn);
    }

    return GestureDetector(
      onTap: _toggleSwitch,
      child: StreamBuilder<bool>(
        stream: _switchStoreBlock.getSwitchState(),
        builder: (context, snapshot) {
          return Container(
            width: _switchWidth,
            height: _switchHeight,
            decoration: BoxDecoration(
              color: _isOn ? lightOnColor : lightOffColor,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: _isOn ? deepOnColor : deepOffColor,
                width: 2,
              ),
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
                  left: _isOn ? -3 : _switchWidth - 2 - _switchHeight,
                  duration: _animationDuration,
                  child: AnimatedRotation(
                    turns: _isOn ? -0.2 : 0.2,
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
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
