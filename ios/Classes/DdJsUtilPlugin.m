#import "DdJsUtilPlugin.h"
#if __has_include(<dd_js_util/dd_js_util-Swift.h>)
#import <dd_js_util/dd_js_util-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dd_js_util-Swift.h"
#endif

@implementation DdJsUtilPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDdJsUtilPlugin registerWithRegistrar:registrar];
}
@end
