part of '../../dd_js_util.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
