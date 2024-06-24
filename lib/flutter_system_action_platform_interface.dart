import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_system_action_method_channel.dart';

abstract class FlutterSystemActionPlatform extends PlatformInterface {
  FlutterSystemActionPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSystemActionPlatform _instance =
      MethodChannelFlutterSystemAction();

  static FlutterSystemActionPlatform get instance => _instance;

  static set instance(FlutterSystemActionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> volumeButtonRaiseEvent() async {
    throw UnimplementedError(
        'volumeButtonRaiseEvent() has not been implemented.');
  }

  Future<void> volumeButtonLowerEvent() async {
    throw UnimplementedError(
        'volumeButtonLowerEvent() has not been implemented.');
  }

  Future<void> torchButtonOffEvent() async {
    throw UnimplementedError('torchButtonOffEvent() has not been implemented.');
  }

  Future<void> torchButtonOnEvent() async {
    throw UnimplementedError('torchButtonOnEvent() has not been implemented.');
  }

  Future<void> brightnessRaiseEvent() async {
    throw UnimplementedError(
        'brightnessRaiseEvent() has not been implemented.');
  }

  Future<void> brightnessLowerEvent() async {
    throw UnimplementedError(
        'brightnessLowerEvent() has not been implemented.');
  }

  Future<void> brightnessMaxEvent() async {
    throw UnimplementedError('brightnessMaxEvent() has not been implemented.');
  }

  Future<void> brightnessZeroEvent() async {
    throw UnimplementedError('brightnessZeroEvent() has not been implemented.');
  }

  Future<void> ringtoneVolumeRaiseEvent() async {
    throw UnimplementedError(
        'ringtoneVolumeRaiseEvent() has not been implemented.');
  }

  Future<void> ringtoneVolumeDownEvent() async {
    throw UnimplementedError(
        'ringtoneVolumeDownEvent() has not been implemented.');
  }

  Future<void> notificationVolumeRaisePress() async {
    throw UnimplementedError(
        'notificationVolumeRaisePress() has not been implemented.');
  }

  Future<void> notificationVolumeDownPress() async {
    throw UnimplementedError(
        'notificationVolumeDownPress() has not been implemented.');
  }

  Future<void> vibrationButtonPress() async {
    throw UnimplementedError(
        'vibrationButtonPress() has not been implemented.');
  }

  Future<void> ringModeOnButtonPress() async {
    throw UnimplementedError(
        'ringModeOnButtonPress() has not been implemented.');
  }

  Future<void> darkModeEventButtonPressed() async {
    throw UnimplementedError(
        'darkModeEventButtonPressed() has not been implemented.');
  }

  Future<int> getDeviceOrientation() async {
    throw UnimplementedError(
        'getDeviceOrientation() has not been implemented.');
  }

  Future<String> getDeviceLocale() async {
    throw UnimplementedError('getDeviceLocale() has not been implemented.');
  }

  Future<int> getNetworkStatus() async {
    throw UnimplementedError('getNetworkStatus() has not been implemented.');
  }

  Future<int> getBatteryChargingStatus() async {
    throw UnimplementedError(
        'getBatteryChargingStatus() has not been implemented.');
  }
}
