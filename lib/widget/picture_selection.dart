import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

extension WidgetTa on Widget {
  Widget addTap(VoidCallback onTap) {
    return GestureDetector(onTap: onTap, child: this);
  }
}

///自定义渲染布局 (file)
///
/// [size] - 图片容器的宽高
/// [onRemove] - 可以直接调用这个方法删除图片
typedef ImageItemRender = Widget Function(BuildContext context, File file, Size size, Function(File file) onRemove);

///自定义占位布局小部件
///也就是替换默认的+号小部件
///[size] - 组件宽高
typedef PlaceholderBuilder = Widget Function(Size size);

///自定义选择菜单
/// [imagePicker] - 用户选择了相册回调函数
/// [cameraPicker] - 用户选择了拍摄回调函数
typedef MenusBuilder = Widget Function(Function imagePicker, Function cameraPicker);

///图片选择组件
class PictureSelection extends StatefulWidget {
  /// 一行展示多少张图片
  ///
  /// 默认: 3
  final int columnCount;

  ///最多可以选择几张图片
  ///
  /// 默认: 9
  final int maxCount;

  /// 每张图片之间的间距 (横向)
  ///
  /// 默认:12
  final double? mainAxisSpacing;

  /// 每张图片之间的间距 (竖向)
  ///
  /// 默认: 12
  final double? crossAxisSpacing;

  /// 组件的边距
  ///
  /// 默认: 12
  final EdgeInsets? padding;

  /// 是否允许多选
  ///
  /// 默认false
  final bool multipleChoice;

  /// 删除某个图片回调
  /// 如果添加了这个参数,组件将不会执行默认的删除函数
  final ValueChanged<File>? removed;

  /// 自定义图片布局
  ///
  ///
  ///
  /// 例子
  ///                 itemBuilder: ( context, file, size, onRemove){
  ///                   return SizedBox(
  ///                     width: size.width,
  ///                     height: size.height,
  ///                     child: GestureDetector(child: Image.file(file),onTap:(){
  ///                       //点击图片删除
  ///                       onRemove(file);
  ///                     }),
  ///                   );
  ///                 },
  ///
  ///
  final ImageItemRender? itemBuilder;

  /// 自定义占位小部件
  ///
  ///
  /// 例子
  ///                 placeholderBuilder: (size) {
  ///                   return SizedBox(
  ///                       width: size.width,
  ///                       height: size.height,
  ///                       child: Center(
  ///                         child: Column(
  ///                           mainAxisAlignment: MainAxisAlignment.center,
  ///                           children: [
  ///                             Icon(Icons.add),
  ///                             SizedBox(height: 2),
  ///                             Text('添加图片'),
  ///                           ],
  ///                         ),
  ///                       ));
  ///                 },
  ///
  ///
  final PlaceholderBuilder? placeholderBuilder;

  /// 自定义弹出菜单布局
  ///
  /// [Function] - 参数1 - 相册选择方式回调函数
  /// [Function] - 参数2 - 相机拍摄选择模式
  ///
  ///
  /// 例子:
  ///                 menusBuilder: (a,b){
  ///                   return Container(
  ///                     color: Colors.pink,
  ///                     child: SingleChildScrollView(
  ///                       child: Column(children: [
  ///                         TextButton(child: Text('图库选择'),onPressed: () async {
  ///                           await a();
  ///                         },),
  ///                         TextButton(child: Text('相机选择'),onPressed: () async {
  ///                           await b();
  ///                         },)
  ///                       ],)
  ///                     ),
  ///                   );
  ///                 },
  ///
  ///
  final MenusBuilder? menusBuilder;

  /// 组件的控制器
  final PictureSelectionController? controller;

  const PictureSelection(
      {Key? key,
      this.columnCount = 3,
      this.maxCount = 9,
      this.mainAxisSpacing,
      this.crossAxisSpacing,
      this.padding,
      this.removed,
      this.controller,
      this.itemBuilder,
      this.menusBuilder,
      this.placeholderBuilder,
      this.multipleChoice = false})
      : super(key: key);

  @override
  State<PictureSelection> createState() => _PictureSelectionState();
}

class _PictureSelectionState extends State<PictureSelection> {
  /// 用户已选择的图片
  final List<File> _renderImages = [];

  @override
  Widget build(BuildContext context) {
    return WaterfallFlow.count(
      crossAxisCount: widget.columnCount,
      shrinkWrap: true,
      padding: widget.padding ?? const EdgeInsets.all(12),
      mainAxisSpacing: widget.mainAxisSpacing ?? 12,
      crossAxisSpacing: widget.crossAxisSpacing ?? 12,
      physics: const NeverScrollableScrollPhysics(),
      children: [..._renderImages.map(_renderImageItem), if (_renderImages.length < widget.maxCount) _renderPlaceholderWidget()],
    );
  }

  @override
  void initState() {
    super.initState();
    _bindController();
  }

  @override
  void didUpdateWidget(covariant PictureSelection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      _bindController();
    }
  }

  /// 渲染"添加小部件"
  Widget _renderPlaceholderWidget() {
    if (!widget.multipleChoice && _renderImages.length == 1) {
      return const SizedBox();
    }
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (widget.placeholderBuilder != null) {
          return widget.placeholderBuilder!.call(Size(constraints.maxWidth, constraints.maxWidth)).addTap(showSelection);
        }
        return const ImageAddIcon().addTap(showSelection);
      },
    );
  }

  /// 绑定控制器
  void _bindController() {
    widget.controller?.bind(this);
  }

  /// 图片展示布局
  Widget _renderImageItem(File file) {
    if (widget.itemBuilder != null) {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return widget.itemBuilder!.call(context, file, Size(constraints.maxWidth, constraints.maxWidth), _removeFile);
        },
      );
    }

    /// 默认的布局
    return ImageDefaultShow(file, onRemove: _removeFile);
  }

  /// 删除某张图片
  void _removeFile(File file) {
    widget.removed?.call(file);
    if (widget.removed == null) {
      removeFile(file);
    }
  }

  /// 删除某张图片并刷新UI
  void removeFile(File file) {
    _renderImages.removeWhere((element) => element.path == file.path);
    _refreshUi();
  }

  /// 清空全部图片
  void removeAll() {
    _renderImages.clear();
    _refreshUi();
  }

  /// 拍摄图片
  Future<void> _shoot() async {
    final nav = Navigator.of(context);
    final file = await ImagePicker().pickImage(source: ImageSource.camera);
    if (file != null) {
      _renderImages.add(File(file.path));
      _refreshUi();
      nav.pop();
    }
  }

  /// 从相册选择还是直接拍摄
  void showSelection() {
    showBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        elevation: 3,
        builder: (c) {
          if (widget.menusBuilder != null) {
            return widget.menusBuilder!.call(_photoAlbumSelect, _shoot);
          }
          return SingleChildScrollView(
              child: Column(
            children: [
              ListTile(
                title: const Text('相册'),
                onTap: _photoAlbumSelect,
              ),
              ListTile(title: const Text('去拍摄'), onTap: _shoot),
            ],
          ));
        });
  }

  /// 去相册选择
  Future<void> _photoAlbumSelect() async {
    final navigator = Navigator.of(context);
    if (widget.multipleChoice) {
      final files = await ImagePicker().pickMultiImage();
      if (files != null) {
        var fs = List<File>.from(files.map((e) => File(e.path))).toList();
        // 计算还能存多少张图片
        final h = widget.maxCount - _renderImages.length;
        if (fs.length > h) {
          fs.removeRange(h, fs.length);
        }
        _renderImages.addAll(fs);
        _refreshUi();
        navigator.pop();
      }
    } else {
      //单选模式
      final file = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (file != null) {
        _renderImages.add(File(file.path));
        _refreshUi();
        navigator.pop();
      }
    }
  }

  void _refreshUi() {
    if (mounted) {
      setState(() {});
    }
  }
}

// 默认的图片展示方式
class ImageDefaultShow extends StatelessWidget {
  final File file;
  final ValueChanged<File>? onRemove;
  final Widget? removeWidget;
  const ImageDefaultShow(this.file, {Key? key, this.onRemove, this.removeWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.file(
              file,
              fit: BoxFit.cover,
            ),
          ),
          (removeWidget ?? const SizedBox()).addTap(() {
            onRemove?.call(file);
          }),
          if (removeWidget == null)
            Positioned(
                right: 6,
                top: 6,
                child: const SizedBox(width: 26, height: 26, child: CircleAvatar(backgroundColor: Colors.black45, child: Icon(Icons.delete, size: 12)))
                    .addTap(() {
                  onRemove?.call(file);
                }))
        ],
      ),
    );
  }
}

// 添加相册的图标
class ImageAddIcon extends StatelessWidget {
  const ImageAddIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Colors.white),
        alignment: Alignment.center,
        child: const Icon(
          Icons.add,
          color: Colors.grey,
        ),
      ),
    );
  }
}

/// 图片选择器控制器类
class PictureSelectionController {
  _PictureSelectionState? _state;

  // ignore: library_private_types_in_public_api
  void bind(_PictureSelectionState state) {
    _state = state;
  }

  /// 删除某张图片
  void remove(File file) {
    _state?.removeFile(file);
  }

  /// 获取全部图片
  List<File> get getFiles => _state?._renderImages ?? [];

  /// 获取数量
  int get length => _state?._renderImages.length ?? 0;

  /// 清空全部用户选择的图片
  void clean() => _state?.removeAll();
}
