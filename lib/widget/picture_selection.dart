part of '../dd_js_util.dart';

extension WidgetTa on Widget {
  Widget addTap(VoidCallback onTap) {
    return GestureDetector(onTap: onTap, child: this);
  }
}

///自定义渲染布局 (file)
///
/// [size] - 图片容器的宽高
/// [onRemove] - 可以直接调用这个方法删除图片
typedef ImageItemRender = Widget Function(
    BuildContext context, PictureSelectionItemModel file, Size size, Function(PictureSelectionItemModel file) onRemove);

///自定义占位布局小部件
///也就是替换默认的+号小部件
///[size] - 组件宽高
typedef PlaceholderBuilder = Widget Function(Size size);

///删除图片事件
///bool - 返回true 表示删除成功,false为删除失败
///
typedef PictureSelectionRemoveFile = Future<bool> Function(PictureSelectionItemModel file);

///自定义选择菜单
/// [imagePicker] - 用户选择了相册回调函数
/// [cameraPicker] - 用户选择了拍摄回调函数
typedef MenusBuilder = Widget Function(Function imagePicker, Function cameraPicker);

///自定义构建
typedef CustomRenderBody = Widget Function(
    List<PictureSelectionItemModel> images, PictureSelectionController controller, bool showAddButton);

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
  final PictureSelectionRemoveFile? removed;

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

  ///弹出菜单回调
  final VoidCallback? addIconOnTap;

  ///初始化图片列表
  final List<PictureSelectionItemModel>? initUrls;

  ///开启图片预览
  final bool enableImagePreview;

  ///自定义渲染层
  final CustomRenderBody? customRender;

  ///多语言配置
  final PictureSelectionI18nConfig i18nConfig;

  ///列表发生变化回调
  final ValueChanged<List<PictureSelectionItemModel>>? onChange;

  const PictureSelection(
      {super.key,
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
      this.multipleChoice = false,
      this.addIconOnTap,
      this.initUrls,
      this.enableImagePreview = true,
      this.customRender,
      this.i18nConfig = const PictureSelectionI18nConfig(),
      this.onChange});

  @override
  State<PictureSelection> createState() => _PictureSelectionState();
}

class _PictureSelectionState extends State<PictureSelection> {
  /// 用户已选择的图片
  late final List<PictureSelectionItemModel> _renderImages = widget.initUrls ?? <PictureSelectionItemModel>[];

  late final PictureSelectionController _controller = widget.controller ?? PictureSelectionController();

  @override
  Widget build(BuildContext context) {
    final showAddButton = _renderImages.length < widget.maxCount;
    if (widget.customRender != null) {
      return widget.customRender!.call(_renderImages, _controller, showAddButton); //自定义渲染图片列表
    }
    return WaterfallFlow.count(
      crossAxisCount: widget.columnCount,
      shrinkWrap: true,
      padding: widget.padding ?? const EdgeInsets.all(12),
      mainAxisSpacing: widget.mainAxisSpacing ?? 12,
      crossAxisSpacing: widget.crossAxisSpacing ?? 12,
      physics: const NeverScrollableScrollPhysics(),
      children: [..._renderImages.map(_renderImageItem), if (showAddButton) _renderPlaceholderWidget()],
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
    if (oldWidget.controller != _controller) {
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
          return widget.placeholderBuilder!
              .call(Size(constraints.maxWidth, constraints.maxWidth))
              .addTap(showSelection);
        }
        return const ImageAddIcon().addTap(showSelection);
      },
    );
  }

  /// 绑定控制器
  void _bindController() {
    _controller.bind(this);
  }

  /// 图片展示布局
  Widget _renderImageItem(PictureSelectionItemModel file) {
    if (widget.itemBuilder != null) {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return widget.itemBuilder!.call(context, file, Size(constraints.maxWidth, constraints.maxWidth), _removeFile);
        },
      ).click(() {
        if (widget.enableImagePreview) {
          context.navToWidget(to: ImagePreview(images: _renderImages, index: _renderImages.indexOf(file)));
        }
      });
    }

    /// 默认的布局
    return ImageDefaultShow(file, onRemove: _removeFile).click(() {
      if (widget.enableImagePreview) {
        context.navToWidget(to: ImagePreview(images: _renderImages, index: _renderImages.indexOf(file)));
      }
    });
  }

  /// 删除某张图片
  Future<void> _removeFile(PictureSelectionItemModel file) async {
    if (widget.removed != null) {
      final isSuccess = await widget.removed!.call(file);
      if (isSuccess) {
        removeFile(file);
      }
    } else {
      removeFile(file);
    }
  }

  /// 删除某张图片并刷新UI
  void removeFile(PictureSelectionItemModel file) {
    _renderImages.remove(file);
    widget.onChange?.call(_renderImages);
    _refreshUi();
  }

  /// 清空全部图片
  void removeAll() {
    _renderImages.clear();
    widget.onChange?.call(_renderImages);
    _refreshUi();
  }

  /// 拍摄图片
  Future<void> _shoot() async {
    final nav = Navigator.of(context);
    final file = await ImagePicker().pickImage(source: ImageSource.camera);
    if (file != null) {
      nav.pop();
      _renderImages.add(PictureSelectionItemModel.file(file: io.File(file.path)));
      widget.onChange?.call(_renderImages);
      _refreshUi();
    }
  }

  /// 从相册选择还是直接拍摄
  void showSelection() {
    widget.addIconOnTap?.call();
    showModalBottomSheet(
        context: context,
        builder: (c) {
          if (widget.menusBuilder != null) {
            return widget.menusBuilder!.call(_photoAlbumSelect, _shoot);
          }
          return SingleChildScrollView(
              child: Column(
            children: [
              ListTile(
                title: Text(widget.i18nConfig.photoAlbumMenuText),
                onTap: _photoAlbumSelect,
              ),
              ListTile(title: Text(widget.i18nConfig.goShootText), onTap: _shoot),
              SizedBox(height: context.paddingBottom)
            ],
          ));
        });
  }

  /// 去相册选择
  Future<void> _photoAlbumSelect() async {
    final navigator = Navigator.of(context);
    if (widget.multipleChoice) {
      final files = await ImagePicker().pickMultiImage();
      if (files.isNotEmpty) {
        var fs = List<io.File>.from(files.map((e) => io.File(e.path))).toList();
        // 计算还能存多少张图片
        final h = widget.maxCount - _renderImages.length;
        if (fs.length > h) {
          fs.removeRange(h, fs.length);
        }
        navigator.pop();
        _renderImages.addAll(fs.map((e) => PictureSelectionItemModel.file(file: e)));
        widget.onChange?.call(_renderImages);
        _refreshUi();
      }
    } else {
      //单选模式
      final file = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (file != null) {
        navigator.pop();
        _renderImages.add(PictureSelectionItemModel.file(file: io.File(file.path)));
        widget.onChange?.call(_renderImages);
        _refreshUi();
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
  final PictureSelectionItemModel file;
  final ValueChanged<PictureSelectionItemModel>? onRemove;
  final Widget? removeWidget;

  const ImageDefaultShow(this.file, {super.key, this.onRemove, this.removeWidget});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: file.isLocalFile
                ? Image.file(
                    (file as XXFile).file,
                    fit: BoxFit.cover,
                  )
                : Image.network((file as XXImage).url),
          ),
          (removeWidget ?? const SizedBox()).addTap(() {
            onRemove?.call(file);
          }),
          if (removeWidget == null)
            Positioned(
                right: 6,
                top: 6,
                child: const SizedBox(
                        width: 26,
                        height: 26,
                        child: CircleAvatar(backgroundColor: Colors.black45, child: Icon(Icons.delete, size: 12)))
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
  const ImageAddIcon({super.key});

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
  void remove(PictureSelectionItemModel file) {
    _state?.removeFile(file);
  }

  ///弹出菜单
  void showMenu() {
    _state?.showSelection();
  }

  /// 获取全部图片
  List<PictureSelectionItemModel> get getFiles => _state?._renderImages ?? [];

  /// 获取数量
  int get length => _state?._renderImages.length ?? 0;

  /// 清空全部用户选择的图片
  void clean() => _state?.removeAll();
}
