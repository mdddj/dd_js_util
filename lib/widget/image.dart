part of '../dd_js_util.dart';

/// base 64 图片的展示
class ImageView extends StatelessWidget {
  final MyImage image;

  const ImageView({super.key, required this.image});
  ImageParams get params => image.params;
  @override
  Widget build(BuildContext context) {
    return params.heroTag != null
        ? Hero(tag: params.heroTag!, child: _isSelectedWrapper(context))
        : _isSelectedWrapper(context);
  }

  Widget _isSelectedWrapper(BuildContext context) {
    return params.isSelected ? _selectedRender(context) : _render;
  }

  ///渲染选中样式
  Widget _selectedRender(BuildContext context) {
    return Stack(
      children: [
        _render,
        Positioned(
          bottom: 4,
          right: 4,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.check,
              size: 16,
              color: context.primaryColor,
            ),
          ),
        )
      ],
    );
  }

  Widget get _render {
    return ExtendedImage(
      image: getImage,
      width: getWidth,
      height: getHeight,
      fit: params.fit,
      borderRadius: params.borderRadius,
      shape: params.shape,
      enableMemoryCache: params.enableMemoryCache,
      clearMemoryCacheIfFailed: true,
      loadStateChanged: _stateChange,
      gaplessPlayback: true,
    );
  }

  ImageProvider get getImage {
    return image.when(
        network: _buildNetwork,
        base64: _buildBaseImage,
        filePath: (String filePath, ImageParams params) {
          return FileImage(io.File(filePath));
        });
  }

  double? get getWidth {
    return params.size ?? params.width;
  }

  double? get getHeight {
    return params.size ?? params.height;
  }

  Widget? _stateChange(ExtendedImageState state) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        return Skeleton(width: getWidth ?? 0, height: getHeight ?? 0, borderRadius: params.borderRadius);
      case LoadState.completed:
        return GestureDetector(
          onTap: params.onTap,
          child: ExtendedRawImage(image: state.extendedImageInfo?.image, fit: params.fit),
        );
      case LoadState.failed:
        return Container(
          width: getWidth,
          height: getHeight,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: params.borderRadius, color: Colors.grey.shade200),
          child: params.errorWidget,
        ).click(state.reLoadImage);
    }
  }

  ImageProvider<Object> _buildNetwork(String url, ImageParams params) {
    return NetworkImage(url);
  }

  ImageProvider<Object> _buildBaseImage(String base64Code, ImageParams params) {
    return MemoryImage(base64Decode(base64Code));
  }
}

class Skeleton extends StatefulWidget {
  final double height;
  final double width;
  final BorderRadius? borderRadius;

  const Skeleton({
    super.key,
    this.height = 20,
    this.width = 200,
    this.borderRadius,
  });

  @override
  SkeletonState createState() => SkeletonState();
}

class SkeletonState extends State<Skeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(
        () {
          setState(() {});
        },
      );

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        gradient: LinearGradient(
          begin: Alignment(gradientPosition.value, 0),
          end: const Alignment(-1, 0),
          colors: [
            context.theme.highlightColor,
            context.theme.highlightColor.withOpacity(.01),
            context.theme.highlightColor.withOpacity(.3)
          ],
        ),
      ),
    );
  }
}
