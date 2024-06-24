# 📱 Flutter System Action Plugins

`flutter_system_action` is a Flutter plugin that provides a set of system actions such as adjusting
volume, toggling the torch, changing brightness, and more on Android devices.

## 🌟 Features

- 🔊 Adjust music volume (raise/lower)
- 🔦 Toggle the torch (flashlight) on/off
- 🌞 Adjust screen brightness (raise/lower/max/zero)
- 📞 Adjust ringtone volume (raise/lower)
- 🔔 Adjust notification volume (raise/lower)
- 📳 Toggle vibration mode on/off
- 📳 Toggle ring mode on
- 🌑 Open display settings for dark mode
- 📶 Retrieve device orientation
- 🌐 Retrieve device locale
- 🔋 Retrieve battery charging status
- 📡 Retrieve network status

## 🚀 Getting Started

### Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_system_action: ^1.0.4
```

Then, run flutter pub get to install the package.

## Android Permissions

This plugin requires certain permissions to function properly. Make sure to add the following
permissions to your AndroidManifest.xml file:

``` 
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
<uses-permission android:name="android.permission.VIBRATE" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.CHANGE_WIFI_STATE" />
```

### Permission For Flashlight

``` 
<uses-permission android:name="android.permission.CAMERA" />
```

### Permission For Brightness

``` 
<uses-permission android:name="android.permission.WRITE_SETTINGS" />
```

## Usage

Import the package in your Dart code:

```
import 'package:flutter_system_action/flutter_system_action.dart';
```

## API

### Methods

- `volumeButtonRaiseEvent()`:

    - Increases the music volume.
- `volumeButtonLowerEvent()`:

    - Decreases the music volume.
- `torchButtonOnEvent()`:

    - Turns on the torch (flashlight)

- `torchButtonOffEvent()`:

    - Turns off the torch (flashlight).

- `brightnessRaiseEvent()`:

    - Increases the screen brightness.

- `brightnessLowerEvent()`:

    - Decreases the screen brightness.

- `brightnessMaxEvent()`:

    - Sets the screen brightness to maximum.

- `brightnessZeroEvent()`:

    - Sets the screen brightness to zero.

- `ringtoneVolumeRaiseEvent()`:

    - Increases the ringtone volume.

- `ringtoneVolumeDownEvent()`:

    - Decreases the ringtone volume.

- `notificationVolumeRaisePress()`:

    - Increases the notification volume.

- ` notificationVolumeDownPress()`:

    - Decreases the notification volume.

- `vibrationButtonPress()`:

    - Sets the phone to vibration mode.

- `ringModeOnButtonPress()`:

    - Sets the phone to ring mode.

- `darkModeEventButtonPressed()`:

    - Opens the display settings for dark mode.

- `getDeviceOrientation()` :
    - The device orientation as an integer:
        - 1: Portrait orientation
        - 2: Landscape orientation
        - 0: Unknown orientation

    - Example usage:

```
Future<int> getDeviceOrientation() async {
  final int orientation = await FlutterSystemActionPlatform.instance.getDeviceOrientation();
  return orientation;
}

```

- `getDeviceLocale()`

    - The device locale as a string (e.g., en_US).
    - Example usage:

```
Future<String> getDeviceLocale() async {
  final String deviceLocale = await FlutterSystemActionPlatform.instance.getDeviceLocale();
  return deviceLocale;
}

```

- `getNetworkStatus()`

    - The network status as an integer:
        - 1: Connected to Wi-Fi
        - 2: Connected to mobile data
        - 3: Connected to Ethernet
        - 0: Connection type unknown
        - -1: No internet connection

    - Example usage:

```
Future<int> getNetworkStatus() async {
  final int networkStatus = await FlutterSystemActionPlatform.instance.getNetworkStatus();
  return networkStatus;
}

```

- `getBatteryChargingStatus()`

    - The battery charging status as an integer:
        - 0: Charging
        - 1: Discharging
        - 2: Not charging

    - Example usage:

```
Future<int> getBatteryChargingStatus() async {
  final int chargingStatus = await FlutterSystemActionPlatform.instance.getBatteryChargingStatus();
  return chargingStatus;
}

```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.