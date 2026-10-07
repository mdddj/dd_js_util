part of '../dd_js_util.dart';

const int _kMySwiperDefaultAutoplayDelayMs = 3000;
const int _kMySwiperDefaultAutoplayDurationMs = 300;
const int _kMySwiperMiddlePage = 1000000000;

typedef MySwiperOnTap = void Function(int index);
typedef MySwiperDataBuilder = Widget Function(
    BuildContext context, dynamic data, int index);

/// Flutter built-in replacement for the old swiper dependency.
///
/// Only the subset of the old `Swiper` API listed below is actually
/// implemented: [autoplay], [autoplayDelay], [duration], [curve], [loop],
/// [index], [reverse], [scrollDirection], [viewportFraction], [scale],
/// [fade], [itemHeight], [itemWidth], [onIndexChanged] and [onTap].
///
/// The legacy arguments documented as ignored placeholders are accepted so
/// that existing call sites keep compiling, but they have no effect: a
/// `pagination`, `transformer`, `control` or `plugins` value passed in will
/// be silently discarded instead of rendering or animating anything.
class MySwiper extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final ValueChanged<int>? onIndexChanged;
  final bool autoplay;
  final int autoplayDelay;
  final bool autoplayDisableOnInteraction;
  final int duration;
  final Axis scrollDirection;
  final Curve curve;
  final bool loop;
  final int? index;
  final MySwiperOnTap? onTap;
  final ScrollPhysics? physics;
  final double viewportFraction;
  final double? containerHeight;
  final double? containerWidth;
  final double itemHeight;
  final double itemWidth;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final bool outer;
  final double? scale;
  final double? fade;
  final bool reverse;

  // ---------------------------------------------------------------------
  // Ignored placeholders.
  //
  // These fields exist only so old flutter_swiper call sites keep compiling.
  // None of them are read by `build`, so passing a value has NO effect and
  // raises no error at analysis time or at runtime. Migrating code that
  // relies on them (a `SwiperPagination` indicator, a `SwiperTransformer`,
  // a `SwiperControl`, or custom plugins) has to be rewritten by hand.
  // ---------------------------------------------------------------------

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? transformer;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? pagination;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? control;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final List<Object?>? plugins;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? controller;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? customLayoutOption;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? indicatorLayout;

  /// Ignored placeholder, kept for source compatibility. Has no effect.
  final Object? layout;

  const MySwiper({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.indicatorLayout,
    this.transformer,
    this.autoplay = false,
    this.autoplayDelay = _kMySwiperDefaultAutoplayDelayMs,
    this.autoplayDisableOnInteraction = true,
    this.duration = _kMySwiperDefaultAutoplayDurationMs,
    this.onIndexChanged,
    this.index,
    this.onTap,
    this.control,
    this.loop = true,
    this.curve = Curves.ease,
    this.scrollDirection = Axis.horizontal,
    this.pagination,
    this.plugins,
    this.physics,
    this.controller,
    this.customLayoutOption,
    this.containerHeight,
    this.containerWidth,
    this.viewportFraction = 1.0,
    this.itemHeight = double.infinity,
    this.itemWidth = double.infinity,
    this.outer = false,
    this.scale,
    this.fade,
    this.reverse = false,
    this.layout,
  });

  factory MySwiper.children({
    required List<Widget> children,
    bool autoplay = false,
    Object? transformer,
    int autoplayDelay = _kMySwiperDefaultAutoplayDelayMs,
    bool reverse = false,
    bool autoplayDisableOnInteraction = true,
    int duration = _kMySwiperDefaultAutoplayDurationMs,
    ValueChanged<int>? onIndexChanged,
    int index = 0,
    MySwiperOnTap? onTap,
    bool loop = true,
    Curve curve = Curves.ease,
    Axis scrollDirection = Axis.horizontal,
    Object? pagination,
    Object? control,
    List<Object?>? plugins,
    Object? controller,
    Key? key,
    Object? customLayoutOption,
    ScrollPhysics? physics,
    double? containerHeight,
    double? containerWidth,
    double viewportFraction = 1.0,
    double itemHeight = double.infinity,
    double itemWidth = double.infinity,
    bool outer = false,
    double? scale = 1.0,
    double? fade,
  }) {
    return MySwiper(
      key: key,
      itemBuilder: (BuildContext context, int index) => children[index],
      itemCount: children.length,
      autoplay: autoplay,
      transformer: transformer,
      autoplayDelay: autoplayDelay,
      reverse: reverse,
      autoplayDisableOnInteraction: autoplayDisableOnInteraction,
      duration: duration,
      onIndexChanged: onIndexChanged,
      index: index,
      onTap: onTap,
      loop: loop,
      curve: curve,
      scrollDirection: scrollDirection,
      pagination: pagination,
      control: control,
      plugins: plugins,
      controller: controller,
      customLayoutOption: customLayoutOption,
      physics: physics,
      containerHeight: containerHeight,
      containerWidth: containerWidth,
      viewportFraction: viewportFraction,
      itemHeight: itemHeight,
      itemWidth: itemWidth,
      outer: outer,
      scale: scale,
      fade: fade,
    );
  }

  factory MySwiper.list({
    Object? transformer,
    required List<dynamic> list,
    Object? customLayoutOption,
    required MySwiperDataBuilder builder,
    bool autoplay = false,
    int autoplayDelay = _kMySwiperDefaultAutoplayDelayMs,
    bool reverse = false,
    bool autoplayDisableOnInteraction = true,
    int duration = _kMySwiperDefaultAutoplayDurationMs,
    ValueChanged<int>? onIndexChanged,
    int index = 0,
    MySwiperOnTap? onTap,
    bool loop = true,
    Curve curve = Curves.ease,
    Axis scrollDirection = Axis.horizontal,
    Object? pagination,
    Object? control,
    List<Object?>? plugins,
    Object? controller,
    Key? key,
    ScrollPhysics? physics,
    double? containerHeight,
    double? containerWidth,
    double viewportFraction = 1.0,
    double itemHeight = double.infinity,
    double itemWidth = double.infinity,
    bool outer = false,
    double? scale = 1.0,
    double? fade,
  }) {
    return MySwiper(
      key: key,
      itemBuilder: (BuildContext context, int index) =>
          builder(context, list[index], index),
      itemCount: list.length,
      transformer: transformer,
      customLayoutOption: customLayoutOption,
      autoplay: autoplay,
      autoplayDelay: autoplayDelay,
      reverse: reverse,
      autoplayDisableOnInteraction: autoplayDisableOnInteraction,
      duration: duration,
      onIndexChanged: onIndexChanged,
      index: index,
      onTap: onTap,
      loop: loop,
      curve: curve,
      scrollDirection: scrollDirection,
      pagination: pagination,
      control: control,
      plugins: plugins,
      controller: controller,
      physics: physics,
      containerHeight: containerHeight,
      containerWidth: containerWidth,
      viewportFraction: viewportFraction,
      itemHeight: itemHeight,
      itemWidth: itemWidth,
      outer: outer,
      scale: scale,
      fade: fade,
    );
  }

  @override
  State<MySwiper> createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  late PageController _pageController;
  Timer? _timer;
  int _activeIndex = 0;
  int _initialPage = 0;

  @override
  void initState() {
    super.initState();
    _activeIndex = _normalizeIndex(widget.index ?? 0);
    _initialPage = _pageForIndex(_activeIndex);
    _pageController = PageController(
      initialPage: _initialPage,
      viewportFraction: widget.viewportFraction,
    );
    _handleAutoplay();
  }

  @override
  void didUpdateWidget(covariant MySwiper oldWidget) {
    super.didUpdateWidget(oldWidget);
    final bool shouldRecreateController =
        oldWidget.viewportFraction != widget.viewportFraction ||
            oldWidget.loop != widget.loop ||
            oldWidget.itemCount != widget.itemCount;
    if (shouldRecreateController) {
      _activeIndex = _normalizeIndex(widget.index ?? _activeIndex);
      _initialPage = _pageForIndex(_activeIndex);
      final oldController = _pageController;
      _pageController = PageController(
        initialPage: _initialPage,
        viewportFraction: widget.viewportFraction,
      );
      oldController.dispose();
    }

    if (widget.index != null && widget.index != oldWidget.index) {
      _moveToIndex(_normalizeIndex(widget.index!), animation: true);
    }
    _handleAutoplay();
  }

  @override
  void dispose() {
    _stopAutoplay();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.itemCount <= 0) {
      return const SizedBox.shrink();
    }

    Widget child = NotificationListener<ScrollNotification>(
      onNotification: _onScrollNotification,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: widget.scrollDirection,
        reverse: widget.reverse,
        physics: widget.physics,
        itemCount:
            widget.loop && widget.itemCount > 1 ? null : widget.itemCount,
        onPageChanged: _onPageChanged,
        itemBuilder: _buildItem,
      ),
    );

    if (widget.containerWidth != null || widget.containerHeight != null) {
      child = SizedBox(
        width: widget.containerWidth,
        height: widget.containerHeight,
        child: child,
      );
    }

    return child;
  }

  Widget _buildItem(BuildContext context, int pageIndex) {
    final int realIndex = _realIndex(pageIndex);
    Widget child = widget.itemBuilder(context, realIndex);

    if (widget.scale != null || widget.fade != null) {
      child = AnimatedBuilder(
        animation: _pageController,
        child: child,
        builder: (BuildContext context, Widget? child) {
          return _buildTransformedItem(child!, pageIndex);
        },
      );
    }

    if (widget.onTap != null) {
      child = GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => widget.onTap!(realIndex),
        child: child,
      );
    }

    if (_hasFiniteExtent(widget.itemWidth) ||
        _hasFiniteExtent(widget.itemHeight)) {
      child = Center(
        child: SizedBox(
          width: _hasFiniteExtent(widget.itemWidth) ? widget.itemWidth : null,
          height:
              _hasFiniteExtent(widget.itemHeight) ? widget.itemHeight : null,
          child: child,
        ),
      );
    }

    return child;
  }

  Widget _buildTransformedItem(Widget child, int pageIndex) {
    final double page = _pageController.hasClients
        ? _pageController.page ?? _initialPage.toDouble()
        : _initialPage.toDouble();
    final double position = (page - pageIndex).abs().clamp(0.0, 1.0);
    final double? minScale = widget.scale;
    final double? minFade = widget.fade;

    if (minScale != null) {
      final double scale = minScale + (1 - position) * (1 - minScale);
      child = Transform.scale(scale: scale, child: child);
    }
    if (minFade != null) {
      final double opacity = minFade + (1 - position) * (1 - minFade);
      child = Opacity(opacity: opacity.clamp(0.0, 1.0), child: child);
    }

    return child;
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (!widget.autoplay || !widget.autoplayDisableOnInteraction) {
      return false;
    }
    if (notification is ScrollStartNotification &&
        notification.dragDetails != null) {
      _stopAutoplay();
    } else if (notification is ScrollEndNotification) {
      _handleAutoplay();
    }
    return false;
  }

  void _onPageChanged(int pageIndex) {
    final int index = _realIndex(pageIndex);
    if (_activeIndex == index) {
      return;
    }
    _activeIndex = index;
    widget.onIndexChanged?.call(index);
  }

  void _handleAutoplay() {
    _stopAutoplay();
    if (!widget.autoplay || widget.itemCount <= 1) {
      return;
    }
    _timer = Timer.periodic(
      Duration(milliseconds: widget.autoplayDelay),
      (_) => _moveToIndex(_activeIndex + 1, animation: true),
    );
  }

  void _stopAutoplay() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _moveToIndex(int index, {required bool animation}) async {
    if (widget.itemCount <= 0 || !_pageController.hasClients) {
      return;
    }
    final int pageIndex = _pageForIndex(index);
    if (animation) {
      await _pageController.animateToPage(
        pageIndex,
        duration: Duration(milliseconds: widget.duration),
        curve: widget.curve,
      );
    } else {
      _pageController.jumpToPage(pageIndex);
    }
  }

  int _pageForIndex(int index) {
    final int normalizedIndex = _normalizeIndex(index);
    if (!widget.loop || widget.itemCount <= 1) {
      return normalizedIndex;
    }
    final int middle =
        _kMySwiperMiddlePage - (_kMySwiperMiddlePage % widget.itemCount);
    return middle + normalizedIndex;
  }

  int _realIndex(int pageIndex) {
    if (widget.itemCount <= 0) {
      return 0;
    }
    final int value = pageIndex % widget.itemCount;
    return value < 0 ? value + widget.itemCount : value;
  }

  int _normalizeIndex(int index) {
    if (widget.itemCount <= 0) {
      return 0;
    }
    if (widget.loop) {
      return _realIndex(index);
    }
    return index.clamp(0, widget.itemCount - 1);
  }

  bool _hasFiniteExtent(double value) => value.isFinite && value > 0;
}
