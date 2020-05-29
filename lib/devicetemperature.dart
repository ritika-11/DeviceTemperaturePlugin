import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/services.dart';

class Devicetemperature {
  static const MethodChannel _channel =
      const MethodChannel('devicetemperature');

  static Future<double> get DeviceTemperature async {
    final double temperature = await _channel.invokeMethod('getDeviceTemperature');
    return temperature;
  }
}
