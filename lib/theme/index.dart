part of '../dd_js_util.dart';

typedef ThemeBuild = Widget Function(AppLocalSettingModel theme);
class ThemeBuildWidget extends StatelessWidget {
  final ThemeBuild themeBuild;

  const ThemeBuildWidget({super.key, required this.themeBuild});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AppLocalSettingModel>>(
      valueListenable: Hive.box<AppLocalSettingModel>(ddJsUtilAppSettingHiveKey).listenable(),
      builder: (BuildContext context, Box<AppLocalSettingModel> value, Widget? child) {
        return themeBuild.call(value.get(AppSettingCache().themeKey,defaultValue: const AppLocalSettingModel())!);
      },
    );
  }
}