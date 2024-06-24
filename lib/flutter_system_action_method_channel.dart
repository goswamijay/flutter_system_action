import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_system_action_platform_interface.dart';

/// An implementation of [FlutterSystemActionPlatform] that uses method channels.
class MethodChannelFlutterSystemAction extends FlutterSystemActionPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_system_action');

  @override
  Future<void> volumeButtonRaiseEvent() async {
    await methodChannel.invokeMethod('volumeButtonRaiseEvent');
  }

  @override
  Future<void> volumeButtonLowerEvent() async {
    await methodChannel.invokeMethod('volumeButtonLowerEvent');
  }

  @override
  Future<void> torchButtonOffEvent() async {
    await methodChannel.invokeMethod('torchButtonOffEvent');
  }

  @override
  Future<void> torchButtonOnEvent() async {
    await methodChannel.invokeMethod('torchButtonOnEvent');
  }

  @override
  Future<void> brightnessRaiseEvent() async {
    await methodChannel.invokeMethod('brightnessRaiseEvent');
  }

  @override
  Future<void> brightnessLowerEvent() async {
    await methodChannel.invokeMethod('brightnessLowerEvent');
  }

  @override
  Future<void> brightnessMaxEvent() async {
    await methodChannel.invokeMethod('brightnessMaxEvent');
  }

  @override
  Future<void> brightnessZeroEvent() async {
    await methodChannel.invokeMethod('brightnessZeroEvent');
  }

  @override
  Future<void> ringtoneVolumeRaiseEvent() async {
    await methodChannel.invokeMethod('ringtoneVolumeRaiseEvent');
  }

  @override
  Future<void> ringtoneVolumeDownEvent() async {
    await methodChannel.invokeMethod('ringtoneVolumeDownEvent');
  }

  @override
  Future<void> notificationVolumeRaisePress() async {
    await methodChannel.invokeMethod('notificationVolumeRaisePress');
  }

  @override
  Future<void> notificationVolumeDownPress() async {
    await methodChannel.invokeMethod('notificationVolumeDownPress');
  }

  @override
  Future<void> vibrationButtonPress() async {
    await methodChannel.invokeMethod('vibrationButtonPress');
  }

  @override
  Future<void> ringModeOnButtonPress() async {
    await methodChannel.invokeMethod('ringModeOnButtonPress');
  }

  @override
  Future<void> darkModeEventButtonPressed() async {
    await methodChannel.invokeMethod('darkModeEventButtonPressed');
  }

  @override
  Future<int> getDeviceOrientation() async {
    final int orientation =
        await methodChannel.invokeMethod('getDeviceOrientation');
    return orientation;
  }

  @override
  Future<String> getDeviceLocale() async {
    final String deviceLocale =
        await methodChannel.invokeMethod('getDeviceLocale');
    return deviceLocale;
  }

  @override
  Future<int> getNetworkStatus() async {
    final int networkStatus =
        await methodChannel.invokeMethod('getNetworkStatus');
    return networkStatus;
  }

  @override
  Future<int> getBatteryChargingStatus() async {
    final int chargingStatus =
        await methodChannel.invokeMethod('getBatteryChargingStatus');
    return chargingStatus;
  }
}
