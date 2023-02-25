#include "include/dd_js_util/dd_js_util_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dd_js_util_plugin.h"

void DdJsUtilPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dd_js_util::DdJsUtilPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
