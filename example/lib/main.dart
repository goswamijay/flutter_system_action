import 'package:flutter/material.dart';
import 'package:flutter_system_action/flutter_system_action.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterSystemActionPlugin = FlutterSystemAction();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter System Action Example'),
        ),
        body: Center(
          child: Column(
            children: [
              _buildRow([
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.volumeButtonRaiseEvent(),
                  buttonName: "Volume Up",
                ),
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.volumeButtonLowerEvent(),
                  buttonName: "Volume Down",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.torchButtonOnEvent(),
                  buttonName: "Torch On",
                ),
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.torchButtonOffEvent(),
                  buttonName: "Torch Off",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.brightnessRaiseEvent(),
                  buttonName: "Brightness Up",
                ),
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.brightnessLowerEvent(),
                  buttonName: "Brightness Down",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.brightnessMaxEvent(),
                  buttonName: "Brightness Max",
                ),
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.brightnessZeroEvent(),
                  buttonName: "Brightness Min",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async => await _flutterSystemActionPlugin
                      .ringtoneVolumeRaiseEvent(),
                  buttonName: "Ringtone Volume Up",
                ),
                _buildEventButton(
                  onTap: () async => await _flutterSystemActionPlugin
                      .ringtoneVolumeDownEvent(),
                  buttonName: "Ringtone Volume Down",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async => await _flutterSystemActionPlugin
                      .notificationVolumeRaisePress(),
                  buttonName: "Notification Volume Up",
                ),
                _buildEventButton(
                  onTap: () async => await _flutterSystemActionPlugin
                      .notificationVolumeDownPress(),
                  buttonName: "Notification Volume Down",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.vibrationButtonPress(),
                  buttonName: "Vibration Mode On",
                ),
                _buildEventButton(
                  onTap: () async =>
                      await _flutterSystemActionPlugin.ringModeOnButtonPress(),
                  buttonName: "Ringtone Mode On",
                ),
              ]),
              _buildRow([
                _buildEventButton(
                  onTap: () async => await _flutterSystemActionPlugin
                      .darkModeEventButtonPressed(),
                  buttonName: "Dark Mode",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(List<Widget> children) {
    return Row(
      children: children.map((child) => Expanded(child: child)).toList(),
    );
  }

  Widget _buildEventButton({
    required Function() onTap,
    required String buttonName,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: EventCommonButton(
        onTap: onTap,
        buttonName: buttonName,
      ),
    );
  }
}

class EventCommonButton extends StatelessWidget {
  final Function() onTap;
  final String buttonName;

  const EventCommonButton({
    super.key,
    required this.onTap,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10))),
      onPressed: onTap,
      child: Text(
        buttonName,
        textAlign: TextAlign.center,
      ),
    );
  }
}
