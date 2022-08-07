import 'dart:async';

import 'package:flutter/material.dart';

typedef CountDownBuilder = Widget Function(BuildContext context, int day, int hour, int minute, int seconds, int millisecond);

typedef SecondBuild = Widget Function(int seconds);

/// 倒计时组件
class CountDown extends StatefulWidget {
  /// 倒计时控制器
  ///
  /// [CountDownController] 控制倒计时的开始结束
  final CountDownController? controller;

  /// 倒计时结束时间
  final String? endTime;

  /// 倒计时结束事件回调
  final VoidCallback? onEnd;

  /// 是否自动开始倒计时,默认false
  final bool? autoStart;

  /// 构建小部件
  final CountDownBuilder? builder;

  ///秒自定义构建
  final SecondBuild? secondBuild;

  /// 倒计时刷新UI间隔
  ///
  /// 默认 Duration(milliseconds: 100)
  ///
  /// 100毫秒刷新一次
  final Duration? interval;

  ///开始倒计时回调
  final VoidCallback? onStart;

  const CountDown({Key? key, this.controller, this.endTime, this.onEnd, this.autoStart, this.builder, this.interval, this.onStart, this.secondBuild})
      : super(key: key);

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  var _day = 00; // 天
  var _hour = 00; // 时
  var _minute = 00; // 分
  var _second = 00; // 秒
  var _mill = 00; // 毫秒
  var _showComm = true; // 是否显示倒计时组件
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _bind();

    if (widget.autoStart == true) {
      start();
    }

    Future.microtask(refreshDiff);
  }

  @override
  void didUpdateWidget(covariant CountDown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      _bind();
    }
  }

  void _bind() {
    widget.controller?.bind(this);
  }

  @override
  Widget build(BuildContext context) {
    return _renderCore();
  }

  Widget _renderCore() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _showComm ? 50 : 0,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: widget.secondBuild != null
          ? widget.secondBuild!(_second)
          : (widget.builder != null
              ? widget.builder!.call(context, _day, _hour, _minute, _second, _mill)
              : Row(
                  children: [
                    _renderNumberText('$_day天'),
                    _maohao(),
                    _renderNumberText('$_hour时'),
                    _maohao(),
                    _renderNumberText('$_minute分'),
                    _maohao(),
                    _renderNumberText('$_second秒'),
                    _maohao(),
                    _renderNumberText('$_mill毫秒'),
                  ],
                )),
    );
  }

  /// 冒号
  Widget _maohao() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: const Text(
        ':',
      ),
    );
  }

  /// 文本
  Widget _renderNumberText(String text) {
    if (text.length == 1) {
      text = '0$text';
    }
    const size = 32.0;
    return Container(
      height: size,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
      ),
    );
  }

  // 倒计时结束时间
  String get _endTime => widget.endTime ?? '';

  DateTime refreshDiff() {
    final now = DateTime.now();
    final vEndDate = DateTime.parse(_endTime);
    final diff = vEndDate.difference(now); // 毫秒

    /// diffDay < 1  小于一天才显示
    if (now.isBefore(vEndDate)) {
      _showComm = true;
      _day = diff.inDays;
      _hour = diff.inHours;
      _minute = diff.inMinutes % 60;
      _second = diff.inSeconds % 60;
      _mill = diff.inMilliseconds % 60;
      _refreshUi();
    }
    return vEndDate;
  }

  /// 启动倒计时
  void start() {
    if (timer != null && timer?.isActive == true) {
      return;
    }

    /// 优惠结束时间
    final endTime = _endTime;
    if (endTime.isNotEmpty) {
      widget.onStart?.call();
      timer = Timer.periodic(widget.interval ?? const Duration(milliseconds: 100), (timer) {
        final vEndDate = refreshDiff();
        final now = DateTime.now();
        if (now.isAfter(vEndDate)) {
          /// 倒计时结束了
          _showComm = false;
          _refreshUi();
          if (timer.isActive) {
            timer.cancel();
          }

          /// 倒计时结束
          widget.onEnd?.call();
        }
      });
    }
  }

  void _refreshUi() {
    if (mounted) {
      setState(() {});
    }
  }

  void stop() {
    if (timer != null && timer?.isActive == true) {
      timer?.cancel();
      timer = null;
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (timer != null && timer!.isActive) {
      timer!.cancel();
      timer = null;
    }
  }
}

class CountDownController {
  _CountDownState? _state;

  void bind(_CountDownState _s) {
    _state = _s;
  }

  /// 销毁
  void dispose() {
    _state?.timer?.cancel();
    _state?.timer = null;
    _state = null;
  }

  /// 开始倒计时
  void start() {
    _state?.start();
  }

  ///结束倒计时
  void stop() {
    _state?.stop();
  }

  ///刷新倒计时间隔和UI
  void refresh() {
    _state?.refreshDiff();
  }
}
