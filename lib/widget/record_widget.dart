part of dd_js_util;


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

/// 录音小部件
class RecordWidget extends StatefulWidget {

  ///自定义的小部件构建
  final CustomRecordWidget? customBuild;


  const RecordWidget({Key? key,this.customBuild}) : super(key: key);

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
    return Container();
  }


  @Doc(message: '初始化组件,询问是否有权限')
  Future<void> _initRec() async {
    _changeState(RecordState.initLoading);
    bool p = await KPermissionUtil.askMicrophonePermission();
    if(p){
      _changeState(RecordState.initComplete);

    }else{
      _changeState(RecordState.noPermission);
    }
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
