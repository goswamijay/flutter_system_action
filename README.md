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

## 🚀 Getting Started

### Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_system_action: ^1.0.2
```

Then, run flutter pub get to install the package.

## Android Permissions

This plugin requires certain permissions to function properly. Make sure to add the following
permissions to your AndroidManifest.xml file:

``` 
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
<uses-permission android:name="android.permission.VIBRATE" />
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

- `volumeButtonRaiseEvent()`: Increases the music volume.
- `volumeButtonLowerEvent()`: Decreases the music volume.
- `torchButtonOnEvent()`: Turns on the torch (flashlight)
- `torchButtonOffEvent()`: Turns off the torch (flashlight).
- `brightnessRaiseEvent()`: Increases the screen brightness.
- `brightnessLowerEvent()`: Decreases the screen brightness.
- `brightnessMaxEvent()`: Sets the screen brightness to maximum.
- `brightnessZeroEvent()`: Sets the screen brightness to zero.
- `ringtoneVolumeRaiseEvent()`: Increases the ringtone volume.
- `ringtoneVolumeDownEvent()`: Decreases the ringtone volume.
- `notificationVolumeRaisePress()`: Increases the notification volume.
- ` notificationVolumeDownPress()`: Decreases the notification volume.
- `vibrationButtonPress()`: Sets the phone to vibration mode.
- `ringModeOnButtonPress()`: Sets the phone to ring mode.
- `darkModeEventButtonPressed()`: Opens the display settings for dark mode.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.