part of dd_js_util;


typedef ThemeBuild = Widget Function(AppLocalSettingModel theme);
class ThemeBuildWidget extends StatelessWidget {
  final ThemeBuild themeBuild;
  const ThemeBuildWidget({Key? key, required this.themeBuild}) : super(key: key);

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