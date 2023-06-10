class UsageHomeModel{
  String deviceName, roomName;
  int powerOfEnergy, consumeEnergy, jamValue;
  double savePercent;
  bool isIncrease;

  UsageHomeModel(
      this.deviceName,
      this.roomName,
      this.jamValue,
      this.powerOfEnergy,
      this.consumeEnergy,
      this.savePercent,
      this.isIncrease);
}