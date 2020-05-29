import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:devicetemperature/device_temperature.dart';

void main() {
  const MethodChannel channel = MethodChannel('devicetemperature');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getDeviceTemperature', () async {
    expect(await Devicetemperature.DeviceTemperature, '42');
  });
}
