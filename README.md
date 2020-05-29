# device_temperature

[device_temperature](https://github.com/ritika-11/DeviceTemperaturePlugin) is a flutter plugin that can provide you the current temperature of an android device.

```diff
- Note: This plugin can work only in Android as of now!
```


## Usage
- Add [devicetemperature](https://pub.dartlang.org/packages/device_temperature#-installing-tab-) as a dependency in your pubspec.yaml file.


```dart
import 'package:devicetemperature/device_temperature.dart';

double temperature = await Devicetemperature.DeviceTemperature;
```

## Available Methods
- getDeviceTemperature

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update the tests as appropriate.

## License
[MIT](https://github.com/ritika-11/DeviceTemperaturePlugin/blob/master/LICENSE)
