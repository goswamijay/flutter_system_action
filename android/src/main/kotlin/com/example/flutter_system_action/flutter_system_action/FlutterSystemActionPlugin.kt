package com.example.flutter_system_action.flutter_system_action

import android.content.Context
import android.content.Intent
import android.hardware.camera2.CameraAccessException
import android.hardware.camera2.CameraManager
import android.media.AudioManager
import android.net.Uri
import android.os.Build
import android.provider.Settings
import androidx.annotation.RequiresApi
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FlutterSystemActionPlugin */
class FlutterSystemActionPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var applicationContext: Context

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_system_action")
        channel.setMethodCallHandler(this)
        applicationContext = flutterPluginBinding.applicationContext
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "volumeButtonRaiseEvent" -> handleVolumePress(false)
            "volumeButtonLowerEvent" -> handleVolumePress(true)
            "torchButtonOnEvent" -> handleTorchPressed(true)
            "torchButtonOffEvent" -> handleTorchPressed(false)
            "brightnessRaiseEvent" -> handleBrightnessChange(isRaiseButtonPress = true)
            "brightnessLowerEvent" -> handleBrightnessChange(isRaiseButtonPress = false)
            "brightnessMaxEvent" -> handleBrightnessChange(isMaxBrightness = true)
            "brightnessZeroEvent" -> handleBrightnessChange(isZeroBrightness = true)
            "ringtoneVolumeRaiseEvent" -> handleRingVolumePress(false)
            "ringtoneVolumeDownEvent" -> handleRingVolumePress(true)
            "notificationVolumeRaisePress" -> handleNotificationVolumePress(false)
            "notificationVolumeDownPress" -> handleNotificationVolumePress(true)
            "vibrationButtonPress" -> handleVibrationPressed(1)
            "ringModeOnButtonPress" -> handleVibrationPressed(2)
            "darkModeEventButtonPressed" -> darkModeEventButtonPressed()
            else -> result.notImplemented()
        }
        result.success(null)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun handleVolumePress(isLowPress: Boolean) {
        val audioManager =
            applicationContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val direction = if (isLowPress) AudioManager.ADJUST_LOWER else AudioManager.ADJUST_RAISE
        audioManager.adjustStreamVolume(
            AudioManager.STREAM_MUSIC,
            direction,
            AudioManager.FLAG_SHOW_UI
        )
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    private fun handleTorchPressed(enableTorch: Boolean) {
        val cameraManager =
            applicationContext.getSystemService(Context.CAMERA_SERVICE) as CameraManager
        try {
            val cameraId = cameraManager.cameraIdList[0]
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                cameraManager.setTorchMode(cameraId, enableTorch)
            }
        } catch (_: CameraAccessException) {
        }
    }

    private fun handleBrightnessChange(
        isZeroBrightness: Boolean = false,
        isRaiseButtonPress: Boolean = false,
        isMaxBrightness: Boolean = false
    ) {
        if (if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                Settings.System.canWrite(applicationContext)
            } else {
                TODO("VERSION.SDK_INT < M")
            }
        ) {
            val currentBrightness = Settings.System.getInt(
                applicationContext.contentResolver,
                Settings.System.SCREEN_BRIGHTNESS,
                0
            )
            val newBrightness = when {
                isZeroBrightness -> 0
                isMaxBrightness -> 256
                isRaiseButtonPress -> (currentBrightness + 20).coerceAtMost(256)
                else -> (currentBrightness - 20).coerceAtLeast(0)
            }
            Settings.System.putInt(
                applicationContext.contentResolver,
                Settings.System.SCREEN_BRIGHTNESS,
                newBrightness
            )
        } else {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                requestWriteSettingsPermission()
            }
        }
    }

    @RequiresApi(Build.VERSION_CODES.M)
    private fun requestWriteSettingsPermission() {
        val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS).apply {
            data = Uri.parse("package:${applicationContext.packageName}")
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        applicationContext.startActivity(intent)
    }

    private fun handleRingVolumePress(isLowPress: Boolean) {
        val audioManager =
            applicationContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val direction = if (isLowPress) AudioManager.ADJUST_LOWER else AudioManager.ADJUST_RAISE
        audioManager.adjustStreamVolume(
            AudioManager.STREAM_RING,
            direction,
            AudioManager.FLAG_SHOW_UI
        )
    }

    private fun handleNotificationVolumePress(isLowPress: Boolean) {
        val audioManager =
            applicationContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val direction = if (isLowPress) AudioManager.ADJUST_LOWER else AudioManager.ADJUST_RAISE
        audioManager.adjustStreamVolume(
            AudioManager.STREAM_NOTIFICATION,
            direction,
            AudioManager.FLAG_SHOW_UI
        )
    }

    private fun handleVibrationPressed(mode: Int) {
        val audioManager =
            applicationContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        if (audioManager.ringerMode != AudioManager.RINGER_MODE_SILENT) {
            audioManager.ringerMode = when (mode) {
                1 -> AudioManager.RINGER_MODE_VIBRATE
                2 -> AudioManager.RINGER_MODE_NORMAL
                else -> audioManager.ringerMode
            }
        }
    }

    private fun darkModeEventButtonPressed() {
        val intent = Intent().apply {
            action = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                Settings.ACTION_DISPLAY_SETTINGS
            } else {
                Settings.ACTION_SETTINGS
            }
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        applicationContext.startActivity(intent)
    }
}
