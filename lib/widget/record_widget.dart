part of '../dd_js_util.dart';

///录音状态
enum RecordState {
  none('未初始化'),
  initLoading("初始化组件中..."),
  initComplete("初始化完成"),
  noPermission("没有录音权限"),
  recording("录音中..."),
  cancel("用户取消录音"),
  shortTip("录音时长过短");

  const RecordState(this.tip);

  final String tip;
}

///自定义的小部件构建
///[recordState] - 组件状态回调,可以根据状态来显示不同的组件
typedef CustomRecordWidget = Widget Function(RecordState recordState);

/// 录音小部件(只提供麦克风权限检查与[RecordState]状态机)
///
/// 本组件不包含具体的录音实现,接入录音插件后由使用方实现:
/// [customBuild] 会按当前[recordState]回调,在这里驱动自己的录音逻辑与界面。
class RecordWidget extends StatefulWidget {

  ///自定义的小部件构建
  final CustomRecordWidget? customBuild;


  const RecordWidget({super.key, this.customBuild});

  @override
  State<RecordWidget> createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget> {
  ///状态展示
  RecordState recordState = RecordState.none;

  ///录音时长
  Duration progress = Duration.zero;

  ///录音文件路径
  String recordFilepath = '';

  @override
  void initState() {
    super.initState();
    delayFunction(_initRec);
  }

  @override
  Widget build(BuildContext context) {
    //原来直接返回空Container,customBuild和recordState都没有任何作用
    return widget.customBuild?.call(recordState) ?? const SizedBox.shrink();
  }


  @Doc(message: '初始化组件,询问是否有权限')
  Future<void> _initRec() async {
    _changeState(RecordState.initLoading);
    bool p = false;
    try {
      p = await KPermissionUtil.askMicrophonePermission();
    } catch (e) {
      //权限查询失败不能让状态一直停在initLoading
      debugPrint('askMicrophonePermission fail $e');
    }
    _changeState(p ? RecordState.initComplete : RecordState.noPermission);
  }
  
  @Doc(message: '更新录音小部件状态')
  void _changeState(RecordState rs) {
    if(mounted){
      setState(() {
        recordState = rs;
      });
    }
  }
}
