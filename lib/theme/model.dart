import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../dd_js_util.dart';
import '../model/app_local_setting_model.dart';





const ddJsUtilAppSettingHiveKey = 'ddjsutil-app-local-setting';


class AppThemeUtil {
  AppThemeUtil._();

  static AppThemeUtil get _instance => AppThemeUtil._();

  factory AppThemeUtil() => _instance;

  ///注册适配器
  Future<void> registerAdapterAndOpenBox() async {
    Hive.registerAdapter(AppLocalSettingModelAdapter());
    await Hive.openBox<AppLocalSettingModel>(ddJsUtilAppSettingHiveKey);
  }

  ///更换主题
  void changeTheme(int index) {
    AppSettingCache().changeTheme(index);
  }

  ///更换主题
  void changeThemeWithEnum(CustomAppThemeData themeData) {
    AppSettingCache().changeTheme(CustomAppThemeData.values.indexOf(themeData));
  }

  ///前往切换主题页面
  Future<void> toThemeSettingPage(BuildContext context, {CustomBuildThemeItems? builder, PreferredSizeWidget? appbar}) async {
    await context.navToWidget(to: ThemeSettingPage(builder: builder, appbar: appbar));
  }
}

class AppSettingCache extends CacheBase<AppLocalSettingModel> {
  String themeKey = 'theme-setting';

  AppSettingCache._();

  static AppSettingCache get _instance => AppSettingCache._();

  factory AppSettingCache() => _instance;

  Future<AppLocalSettingModel> get localSetting async => (await getValue(themeKey, defaultValue: AppLocalSettingModel.defaultSetting()))!;

  Future<void> changeTheme(int index) async {
    final setting = await localSetting;
    setting.themeIndex = index;
    await setting.save();
  }

  @override
  String get boxName => ddJsUtilAppSettingHiveKey;
}
typedef BuildTheme = ThemeData Function(ThemeData defaultTheme);

class MyAppTheme {
  ///默认主题
  static ThemeData getTheme(int index, {FlexSubThemesData? subThemesData,BuildTheme? buildDefaultTheme}) {
    final defaultTheme = FlexThemeData.light();
    return buildDefaultTheme?.call(defaultTheme) ??  FlexThemeData.light(
        scheme: CustomAppThemeData.values[index].flexScheme,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        subThemesData: subThemesData);
  }

  ///暗夜主题
  static ThemeData get darkTheme {
    return FlexThemeData.dark(
        scheme: FlexScheme.sakura,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true);
  }

  ///构建暗夜模式主题
  static ThemeData buildDarkTheme(BuildTheme themeBuild) {
    final defaultDark = FlexThemeData.dark();
    return themeBuild.call(defaultDark);
  }
}

///app自定义主题
enum CustomAppThemeData {
  material('默认', FlexScheme.material),
  maaterialHc('默认主题(高对比度)', FlexScheme.materialHc),
  blue('浅蓝色', FlexScheme.blue),
  indigo('靛蓝色', FlexScheme.indigo),
  hippieBlue('嬉皮士蓝', FlexScheme.hippieBlue),
  aquaBlue('海洋蓝', FlexScheme.aquaBlue),
  brandBlue('品牌蓝', FlexScheme.brandBlue),
  deepBlue('蓝色深渊', FlexScheme.deepBlue),
  sakura('粉红色樱花', FlexScheme.sakura),
  mandyRed('曼迪红和维京蓝', FlexScheme.mandyRed),
  red('粉色', FlexScheme.red),
  redWine('红酒色', FlexScheme.redWine),
  purpleBrown('茄子棕色', FlexScheme.purpleBrown),
  green('森林绿', FlexScheme.green),
  money('金钱绿', FlexScheme.money),
  jungle('丛林绿', FlexScheme.jungle),
  greyLaw('忧郁蓝灰', FlexScheme.greyLaw),
  wasabi('芥末绿', FlexScheme.wasabi),
  gold('金色日落', FlexScheme.gold),
  mango('芒果莫吉托', FlexScheme.mango),
  amber('琥珀色', FlexScheme.amber),
  vesuviusBurn('伊甸园绿', FlexScheme.vesuviusBurn),
  deepPurple('紫色灌木', FlexScheme.deepPurple),
  ebonyClay('黏土深灰', FlexScheme.ebonyClay),
  barossa('卡丁绿', FlexScheme.barossa),
  shark('鲨鱼灰', FlexScheme.shark),
  bigStone('郁金香黄', FlexScheme.bigStone),
  damask('缎黄色', FlexScheme.damask),
  bahamaBlue('巴哈马蓝', FlexScheme.bahamaBlue),
  mallardGreen('苹果绿', FlexScheme.mallardGreen),
  espresso('浓缩咖啡色', FlexScheme.espresso),
  outerSpace('红色舞台', FlexScheme.outerSpace),
  blueWhale('探戈橙', FlexScheme.blueWhale),
  sanJuanBlue('盛京蓝', FlexScheme.sanJuanBlue),
  rosewood('红木色', FlexScheme.rosewood),
  blumineBlue('藏红花', FlexScheme.blumineBlue),
  verdunHemlock('矿物绿', FlexScheme.verdunHemlock),
  flutterDash('Dash吉祥物主题', FlexScheme.flutterDash),
  materialBaseline('默认主题升级版', FlexScheme.materialBaseline),
  dellGenoa('戴尔绿', FlexScheme.dellGenoa);

  const CustomAppThemeData(this.title, this.flexScheme);

  final String title;
  final FlexScheme flexScheme;
}
