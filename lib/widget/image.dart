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
      width: params.getWidth,
      height: params.getHeight,
      fit: params.fit,
      borderRadius: params.borderRadius,
      shape: params.shape,
      clearMemoryCacheIfFailed: params.clearMemoryCacheIfFailed,
      clearMemoryCacheWhenDispose: params.clearMemoryCacheWhenDispose,
      loadStateChanged: _stateChange,
      gaplessPlayback: params.gaplessPlayback,
      color: params.color,
      colorBlendMode: params.colorBlendMode,
      initEditorConfigHandler: params.initEditorConfigHandler,
      extendedImageEditorKey: params.extendedImageEditorKey,
      mode: params.mode ?? ExtendedImageMode.none,
    );
  }

  ImageProvider get getImage {
    return image.when(
        network: _buildNetwork,
        base64: _buildBaseImage,
        filePath: _buildFileImage,
        asset: _buildAssetImage);
  }

  Widget? _stateChange(ExtendedImageState state) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        return params.customLoadingWidget ??
            Skeleton(
                width: params.getWidth ?? 0,
                height: params.getHeight ?? 0,
                borderRadius: params.borderRadius);
      case LoadState.completed:
        final child = _ImageRawWidget(state: state, params: params);
        return params.customCompletedWidget?.call(state, params, child) ??
            child;
      case LoadState.failed:
        return params.errorWidget ??
            Container(
              width: params.getWidth,
              height: params.getHeight,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: params.borderRadius,
                  color: Colors.grey.shade200),
              child: params.errorWidget,
            ).click(state.reLoadImage);
    }
  }

  ImageProvider<Object> _buildNetwork(String url, ImageParams params) {
    return ExtendedResizeImage.resizeIfNeeded(
      provider: ExtendedNetworkImageProvider(
        url,
        scale: params.scale ?? 1.0,
        headers: params.headers,
        cache: params.cache,
        cancelToken: params.cancelToken,
        retries: params.retries,
        timeRetry: params.timeRetry,
        timeLimit: params.timeLimit,
        cacheKey: params.cacheKey,
        printError: params.printError,
        cacheRawData: params.cacheRawData,
        imageCacheName: params.imageCacheName,
        cacheMaxAge: params.cacheMaxAge,
      ),
      compressionRatio: params.compressionRatio,
      maxBytes: params.maxBytes,
      cacheWidth: params.cacheWidth,
      cacheHeight: params.cacheHeight,
      cacheRawData: params.cacheRawData,
      imageCacheName: params.imageCacheName,
    );
  }

  ImageProvider<Object> _buildBaseImage(String base64Code, ImageParams params) {
    final m = base64Decode(base64Code);
    return ExtendedResizeImage.resizeIfNeeded(
      provider: ExtendedMemoryImageProvider(
        m,
        scale: params.scale ?? 1,
        cacheRawData: params.cacheRawData,
        imageCacheName: params.imageCacheName,
      ),
      compressionRatio: params.compressionRatio,
      maxBytes: params.maxBytes,
      cacheWidth: params.cacheWidth,
      cacheHeight: params.cacheHeight,
      cacheRawData: params.cacheRawData,
      imageCacheName: params.imageCacheName,
    );
  }

  ImageProvider<Object> _buildAssetImage(String assetPath, ImageParams params) {
    return ExtendedResizeImage.resizeIfNeeded(
      provider: params.scale != null
          ? ExtendedExactAssetImageProvider(
              assetPath,
              bundle: params.bundle,
              scale: params.scale ?? 1,
              package: params.package,
              cacheRawData: params.cacheRawData,
              imageCacheName: params.imageCacheName,
            )
          : ExtendedAssetImageProvider(
              assetPath,
              bundle: params.bundle,
              package: params.package,
              cacheRawData: params.cacheRawData,
              imageCacheName: params.imageCacheName,
            ),
      compressionRatio: params.compressionRatio,
      maxBytes: params.maxBytes,
      cacheWidth: params.cacheWidth,
      cacheHeight: params.cacheHeight,
      cacheRawData: params.cacheRawData,
      imageCacheName: params.imageCacheName,
    );
  }

  ImageProvider<Object> _buildFileImage(String filePath, ImageParams params) {
    return ExtendedResizeImage.resizeIfNeeded(
      provider: ExtendedFileImageProvider(
        ex_image.File(filePath),
        scale: params.scale ?? 1,
        cacheRawData: params.cacheRawData,
        imageCacheName: params.imageCacheName,
      ),
      compressionRatio: params.compressionRatio,
      maxBytes: params.maxBytes,
      cacheWidth: params.cacheWidth,
      cacheHeight: params.cacheHeight,
      cacheRawData: params.cacheRawData,
      imageCacheName: params.imageCacheName,
    );
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
            context.theme.highlightColor.withValues(alpha: .01),
            context.theme.highlightColor.withValues(alpha: .3)
          ],
        ),
      ),
    );
  }
}

class _ImageRawWidget extends StatelessWidget {
  final ImageParams params;
  final ExtendedImageState state;

  const _ImageRawWidget({required this.params, required this.state});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: params.onTap,
      child: ExtendedRawImage(
        image: state.extendedImageInfo?.image,
        fit: params.fit,
        colorBlendMode: params.colorBlendMode,
        color: params.color,
        width: params.getWidth,
        height: params.getHeight,
      ),
    );
  }
}
