// Copyright 2022 The FlutterCandies author. All rights reserved.
// Use of this source code is governed by a MIT license that can be found in the
// LICENSE file.

part of '../dd_js_util.dart';

/// A lazy-[IndexedStack] written by [Alex Li](https://github.com/AlexV525) 💙.
/// it lazily build children only when they are first activated.
///
/// The _lazily build_ here indicates the processes of `Widget`s inflating
/// `Element`s are lazy.
///
/// See also:
/// https://github.com/AlexV525/dartpad_workshops/tree/main/implement_lazy_indexed_stack
class LazyIndexedStack extends StatefulWidget {
  const LazyIndexedStack({
    super.key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
    this.index = 0,
    this.children = const <Widget>[],
  });

  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit sizing;
  final int? index;
  final List<Widget> children;

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  late List<bool> _activatedList = List<bool>.generate(
    widget.children.length,
        (int i) => i == widget.index,
  );

  @override
  void didUpdateWidget(LazyIndexedStack oldWidget) {
    super.didUpdateWidget(oldWidget);
    //children 数量变化时同步扩容/裁剪,否则[_buildChildren]会越界
    if (oldWidget.children.length != widget.children.length) {
      _activatedList = List<bool>.generate(
        widget.children.length,
            (int i) => i < oldWidget.children.length
            ? _activatedList[i]
            : i == widget.index,
      );
    }
    // Activate new index when it's changed between widgets update.
    if (oldWidget.index != widget.index) {
      _activateIndex(widget.index);
    }
  }

  void _activateIndex(int? index) {
    if (index == null || index >= _activatedList.length) {
      return;
    }
    if (!_activatedList[index]) {
      setState(() {
        _activatedList[index] = true;
      });
    }
  }

  List<Widget> _buildChildren(BuildContext context) {
    return List<Widget>.generate(
      widget.children.length,
          (int i) {
        if (_activatedList[i]) {
          return widget.children[i];
        }
        return const SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
      index: widget.index,
      children: _buildChildren(context),
    );
  }
}