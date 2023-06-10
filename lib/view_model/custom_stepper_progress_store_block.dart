import 'dart:async';

class CustomStepperStoreBlock {
  StreamController<double> valueController = StreamController<double>();

  void setStepperState(double position) {
    valueController.sink.add(position);
  }

  Stream<double> getStepperState() {
    return valueController.stream;
  }

  void dispose() {
    valueController.close();
  }
}
