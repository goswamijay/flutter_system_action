import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_system_action/flutter_system_action_platform_interface.dart';
import 'package:flutter_system_action/flutter_system_action_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSystemActionPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSystemActionPlatform {
  @override
  Future<Function> volumeButtonRaiseEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> volumeButtonLowerEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> torchButtonOffEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> torchButtonOnEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> brightnessLowerEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> brightnessMaxEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> brightnessRaiseEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> brightnessZeroEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> notificationVolumeDownPress() {
    throw UnimplementedError();
  }

  @override
  Future<void> notificationVolumeRaisePress() {
    throw UnimplementedError();
  }

  @override
  Future<void> ringtoneVolumeDownEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> ringtoneVolumeRaiseEvent() {
    throw UnimplementedError();
  }

  @override
  Future<void> darkModeEventButtonPressed() {
    throw UnimplementedError();
  }

  @override
  Future<void> ringModeOnButtonPress() {
    throw UnimplementedError();
  }

  @override
  Future<void> vibrationButtonPress() {
    throw UnimplementedError();
  }

  @override
  Future<int> getDeviceOrientation() {
    throw UnimplementedError();
  }

  @override
  Future<String> getDeviceLocale() {
    throw UnimplementedError();
  }

  @override
  Future<int> getBatteryChargingStatus() {
    throw UnimplementedError();
  }

  @override
  Future<int> getNetworkStatus() {
    throw UnimplementedError();
  }
}

void main() {
  final FlutterSystemActionPlatform initialPlatform =
      FlutterSystemActionPlatform.instance;

  test('$MethodChannelFlutterSystemAction is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSystemAction>());
  });
}
