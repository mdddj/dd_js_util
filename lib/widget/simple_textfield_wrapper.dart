part of '../dd_js_util.dart';

typedef FocusNodeWidgetBuilder = Widget Function(FocusNode focusNode);
typedef KeyboardActionsConfigBuilder = KeyboardActionsConfig Function(KeyboardActionsConfig defaultConfig, FocusNode focusNode, BuildContext context);

class SimpleInputWrapper extends StatefulWidget {
  final FocusNodeWidgetBuilder builder;
  final KeyboardActionsConfigBuilder? buildConfig;

  const SimpleInputWrapper({super.key, required this.builder, this.buildConfig});

  @override
  State<SimpleInputWrapper> createState() => _SimpleInputWrapperState();
}

class _SimpleInputWrapperState extends State<SimpleInputWrapper> {
  final _focusNode = FocusNode();

  KeyboardActionsConfig _buildConfig() {
    return KeyboardActionsConfig(keyboardBarColor: context.theme.dialogBackgroundColor, nextFocus: false, actions: [
      KeyboardActionsItem(
        focusNode: _focusNode,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
        config: widget.buildConfig?.call(_buildConfig(),_focusNode, context) ?? _buildConfig(), disableScroll: true, child: widget.builder(_focusNode));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
