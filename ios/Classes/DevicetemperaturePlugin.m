#import "DevicetemperaturePlugin.h"
#if __has_include(<devicetemperature/devicetemperature-Swift.h>)
#import <devicetemperature/devicetemperature-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "devicetemperature-Swift.h"
#endif

@implementation DevicetemperaturePlugin
//powerInformation = [[EEPowerInformation alloc] init];
//powerInformation.delegate = self;

//- (void) powerInformationUpdated: (EEPowerInformation *) powerInfo
//{
//    NSLog(@"Battery Temperature : %0.2f", powerInfo.batteryTemperature);
//}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDevicetemperaturePlugin registerWithRegistrar:registrar];
}
@end
