#import "FlutterUnityWidgetPlugin.h"
#import <Foundation/Foundation.h>
#if __has_include(<flutter_unity_widget/flutter_unity_widget-Swift.h>)
#import <flutter_unity_widget/flutter_unity_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_unity_widget-Swift.h"
#endif

void OnUnitySceneLoaded(const char* name, const int* buildIndex, const bool* isLoaded, const bool* isValid)
{
    [UnityPlayerUtils unitySceneLoadedHandlerWithName:name buildIndex:buildIndex isLoaded:isLoaded isValid:isValid];
}
    
void OnUnityMessage(const char* message)
{
    [UnityPlayerUtils unityMessageHandler:message];
}

@implementation FlutterUnityWidgetPlugin {
 NSObject<FlutterPluginRegistrar>* _registrar;
 FlutterMethodChannel* _channel;
 NSMutableDictionary* _mapControllers;
}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterUnityWidgetPlugin registerWithRegistrar:registrar];
}

@end
