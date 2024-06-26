import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'kinde_flutter_sdk_platform_interface.dart';

/// An implementation of [KindeFlutterSdkPlatform] that uses method channels.
class MethodChannelKindeFlutterSdk extends KindeFlutterSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('kinde_flutter_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
