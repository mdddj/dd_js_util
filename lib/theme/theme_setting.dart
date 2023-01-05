part of dd_js_util;

typedef CustomBuildThemeItems = Widget Function(BuildContext context, List<CustomAppThemeData> themes);

///主题设置页面
class ThemeSettingPage extends StatelessWidget {
  final CustomBuildThemeItems? builder;
  final PreferredSizeWidget? appbar;
  const ThemeSettingPage({Key? key, this.builder, this.appbar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:appbar ?? '主题设置'.appbar,
      body:builder?.call(context,CustomAppThemeData.values.toList()) ?? ListView(
        padding: const EdgeInsets.all(12),
        children:CustomAppThemeData.values.map(ThemeItemShow.new).toList(),
      ),
    );
  }

}

class ThemeItemShow extends StatelessWidget {
  final CustomAppThemeData themeItem;
  const ThemeItemShow(this.themeItem,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FlexThemeData.light(
        scheme: themeItem.flexScheme,
      ),
      child: Builder(
        builder: (context) {
          return Card(
            color: context.primaryColor,
            child: ListTile(
              title: Text(themeItem.title,style: TextStyle(
                color: context.colorScheme.inversePrimary
              ),),
              subtitle: Text(themeItem.flexScheme.name,style: TextStyle(
                color: context.colorScheme.surface
              ),),
            ),
          ).click(changeTheme);
        }
      ),
    );
  }

  ///更换主题
  void changeTheme() {
    AppThemeUtil().changeThemeWithEnum(themeItem);
  }
}
