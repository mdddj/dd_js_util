#ifndef FLUTTER_PLUGIN_DD_JS_UTIL_PLUGIN_H_
#define FLUTTER_PLUGIN_DD_JS_UTIL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dd_js_util {

class DdJsUtilPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DdJsUtilPlugin();

  virtual ~DdJsUtilPlugin();

  // Disallow copy and assign.
  DdJsUtilPlugin(const DdJsUtilPlugin&) = delete;
  DdJsUtilPlugin& operator=(const DdJsUtilPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace dd_js_util

#endif  // FLUTTER_PLUGIN_DD_JS_UTIL_PLUGIN_H_
