import 'dart:async';

class CustomSwitchStoreBlock {
  bool _isSwitchOn = false;
  StreamController<bool> valueController = StreamController<bool>();

  void setSwitchState(bool isSwitchOn) {
    valueController.sink.add(isSwitchOn);
  }

  Stream<bool> getSwitchState() {
    return valueController.stream;
  }

  void dispose() {
    valueController.close();
  }
}
