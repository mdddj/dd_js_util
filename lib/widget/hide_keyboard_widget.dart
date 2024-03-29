part of '../dd_js_util.dart';

///隐藏键盘的小部件
class HideKeyBoardIcon extends ConsumerWidget {
  final EdgeInsets padding;

  const HideKeyBoardIcon({super.key, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final hei = ref.watchKeyBoardHeight;
    if(hei <= 100) {
      return const SizedBox();
    }
    return Padding(
      padding: padding,
      child: const Icon(Icons.keyboard_hide).click(() {
        context.hideKeyBoard();
      }),
    );
  }
}
