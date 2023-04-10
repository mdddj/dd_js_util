import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/picture_selection_item.dart';
import 'package:flutter/material.dart';

///图片选择测试
class PicDemo extends StatefulWidget {
  const PicDemo({Key? key}) : super(key: key);

  @override
  State<PicDemo> createState() => _PicDemoState();
}

class _PicDemoState extends State<PicDemo> {
  final PictureSelectionController _controller = PictureSelectionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片选择器多选"),
      ),
      body: PictureSelection(
        maxCount: 9,
        controller: _controller,
        multipleChoice: true,
        initUrls: [PM.network(url: "http://dummyimage.com/400x400")],
        removed: (model) async {
          if (model.isNetworkUrl) {
            kLog('删除网络图片...${model.imageUrl}');
            ///在这里请求服务器的api接口,来删除图片
            return true;
          }
          return true;
        },
      ),
    );
  }
}
