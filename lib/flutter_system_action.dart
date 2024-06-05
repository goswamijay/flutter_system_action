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
}
