class UsageHomeModel{
  String deviceName, roomName, imageAsset;
  int powerOfEnergy, consumeEnergy, jamValue;
  double savePercent;
  bool isIncrease;

  UsageHomeModel(
      this.deviceName,
      this.roomName,
      this.imageAsset,
      this.jamValue,
      this.powerOfEnergy,
      this.consumeEnergy,
      this.savePercent,
      this.isIncrease);
}