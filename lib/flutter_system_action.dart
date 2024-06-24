import 'flutter_system_action_platform_interface.dart';

class FlutterSystemAction {
  Future<void> volumeButtonRaiseEvent() async {
    await FlutterSystemActionPlatform.instance.volumeButtonRaiseEvent();
  }

  Future<void> volumeButtonLowerEvent() async {
    await FlutterSystemActionPlatform.instance.volumeButtonLowerEvent();
  }

  Future<void> torchButtonOffEvent() async {
    await FlutterSystemActionPlatform.instance.torchButtonOffEvent();
  }

  Future<void> torchButtonOnEvent() async {
    await FlutterSystemActionPlatform.instance.torchButtonOnEvent();
  }

  Future<void> brightnessRaiseEvent() async {
    await FlutterSystemActionPlatform.instance.brightnessRaiseEvent();
  }

  Future<void> brightnessLowerEvent() async {
    await FlutterSystemActionPlatform.instance.brightnessLowerEvent();
  }

  Future<void> brightnessMaxEvent() async {
    await FlutterSystemActionPlatform.instance.brightnessMaxEvent();
  }

  Future<void> brightnessZeroEvent() async {
    await FlutterSystemActionPlatform.instance.brightnessZeroEvent();
  }

  Future<void> ringtoneVolumeRaiseEvent() async {
    await FlutterSystemActionPlatform.instance.ringtoneVolumeRaiseEvent();
  }

  Future<void> ringtoneVolumeDownEvent() async {
    await FlutterSystemActionPlatform.instance.ringtoneVolumeDownEvent();
  }

  Future<void> notificationVolumeRaisePress() async {
    await FlutterSystemActionPlatform.instance.notificationVolumeRaisePress();
  }

  Future<void> notificationVolumeDownPress() async {
    await FlutterSystemActionPlatform.instance.notificationVolumeDownPress();
  }

  Future<void> vibrationButtonPress() async {
    await FlutterSystemActionPlatform.instance.vibrationButtonPress();
  }

  Future<void> ringModeOnButtonPress() async {
    await FlutterSystemActionPlatform.instance.ringModeOnButtonPress();
  }

  Future<void> darkModeEventButtonPressed() async {
    await FlutterSystemActionPlatform.instance.darkModeEventButtonPressed();
  }

  ///getDeviceOrientation() RETURN INT VALUE
  /*
  PORTRAIT ORIENTATION -->> 1
  LANDSCAPE ORIENTATION -->> 2
  Unknown ORIENTATION -->> 0
  */
  Future<int> getDeviceOrientation() async {
    final int orientation =
        await FlutterSystemActionPlatform.instance.getDeviceOrientation();
    return orientation;
  }

  ///getDeviceLocale() RETURN STRING VALUE
  /*
 en_US
  */
  Future<String> getDeviceLocale() async {
    final String deviceLocale =
        await FlutterSystemActionPlatform.instance.getDeviceLocale();
    return deviceLocale;
  }

  ///getNetworkStatus() RETURN INT VALUE
  /*
  iSConnectWithWifi = 1
  iSConnectWithMobileData = 2
  iSConnectWithEthernet = 3
  iSConnectWithUnknown = 0
  noInternetConnect = -1
  */
  Future<int> getNetworkStatus() async {
    final int networkStatus =
        await FlutterSystemActionPlatform.instance.getNetworkStatus();
    return networkStatus;
  }

  ///getBatteryChargingStatus() RETURN INT VALUE
  /*
  Charging = 0
  Discharging = 1
  Not Charging = 2
  */
  Future<int> getBatteryChargingStatus() async {
    final int chargingStatus =
        await FlutterSystemActionPlatform.instance.getBatteryChargingStatus();
    return chargingStatus;
  }
}
