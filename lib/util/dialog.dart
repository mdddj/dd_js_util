part of '../dd_js_util.dart';

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

void closeIosDialog() {
  SmartDialog.dismiss(tag: "s-dialog-simple-ok-btn");
}

@Doc(message: '显示一个现代化的平台自适应弹窗')

/// Displays a modern platform-adaptive dialog with smooth animations.
///
/// Shows a CupertinoAlertDialog on iOS and a Material 3 styled AlertDialog on Android.
/// Features improved spacing, typography, and visual hierarchy.
///
/// Parameters:
/// - [msg]: The message text to display in the dialog content
/// - [okText]: Text for the primary action button (default: 'Done')
/// - [startActions]: Optional list of widgets to display before the OK button
/// - [endActions]: Optional list of widgets to display after the OK button
/// - [title]: Optional custom title widget for the dialog
/// - [animationType]: Animation type for showing the dialog (default: centerScale_otherSlide)
/// - [cancelText]: Text for the cancel button on Android (default: 'Cancel')
/// - [content]: Optional custom content widget (overrides msg if provided)
/// - [removeCancelButton]: Whether to hide the cancel button on Android dialogs
void showIosDialog(String msg,
    {String okText = 'Done',
    List<Widget>? startActions,
    List<Widget>? endActions,
    Widget? title,
    SmartAnimationType? animationType =
        SmartAnimationType.centerScale_otherSlide,
    String cancelText = 'Cancel',
    Widget? content,
    bool? removeCancelButton}) {
  if (msg.isNotEmpty || content != null) {
    const tag = 's-dialog-simple-ok-btn';
    SmartDialog.show(
        animationType: animationType,
        builder: (context) {
          //web上访问[io.Platform]会抛UnsupportedError
          final isIos = !kIsWeb && io.Platform.isIOS;
          if (isIos) {
            return CupertinoAlertDialog(
              title: title,
              content: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:
                    content ?? Text(msg, style: const TextStyle(fontSize: 14)),
              ),
              actions: [
                if (startActions != null) ...startActions,
                CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text(okText),
                    onPressed: () => SmartDialog.dismiss(tag: tag)),
                if (endActions != null) ...endActions
              ],
            );
          } else {
            final allEmpty = startActions == null && endActions == null;
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: title,
              titlePadding: title != null
                  ? const EdgeInsets.fromLTRB(24, 24, 24, 0)
                  : null,
              contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
              content: content ??
                  Text(
                    msg,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.color
                          ?.withValues(alpha: 0.87),
                    ),
                  ),
              actionsPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              actions: allEmpty
                  ? [
                      if (removeCancelButton != true)
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                            ),
                            onPressed: () => SmartDialog.dismiss(tag: tag),
                            child: Text(cancelText)),
                      FilledButton(
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                          ),
                          onPressed: () => SmartDialog.dismiss(tag: tag),
                          child: Text(okText))
                    ]
                  : [
                      if (startActions != null) ...startActions,
                      FilledButton(
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                          ),
                          onPressed: () => SmartDialog.dismiss(tag: tag),
                          child: Text(okText)),
                      if (endActions != null) ...endActions
                    ],
            );
          }
        },
        tag: tag);
  }
}

/// 显示测试
/// showIosDialog 测试组件
///
/// 包含所有可能的使用场景和参数组合测试
class ShowIosDialogTextWidget extends StatelessWidget {
  const ShowIosDialogTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        // 1. 基础用法 - 只有消息
        ElevatedButton(
          onPressed: () {
            showIosDialog('这是一个简单的提示消息');
          },
          child: const Text('1. 基础弹窗'),
        ),

        // 2. 自定义按钮文字
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '确认要删除这条记录吗？',
              okText: '确认',
              cancelText: '取消',
            );
          },
          child: const Text('2. 自定义按钮文字'),
        ),

        // 3. 带标题的弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '您的账户已成功创建，现在可以开始使用了。',
              title: const Text('欢迎'),
              okText: '开始使用',
            );
          },
          child: const Text('3. 带标题'),
        ),

        // 4. 移除取消按钮
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '操作已完成！',
              okText: '知道了',
              removeCancelButton: true,
            );
          },
          child: const Text('4. 只有确认按钮'),
        ),

        // 5. 自定义内容 Widget
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '',
              title: const Text('用户协议'),
              content: const SizedBox(
                width: 280,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. 尊重用户隐私'),
                    SizedBox(height: 8),
                    Text('2. 保护数据安全'),
                    SizedBox(height: 8),
                    Text('3. 提供优质服务'),
                  ],
                ),
              ),
              okText: '同意',
              cancelText: '拒绝',
            );
          },
          child: const Text('5. 自定义内容'),
        ),

        // 6. 使用 startActions
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '请选择一个操作',
              title: const Text('操作选项'),
              startActions: [
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('选择了编辑');
                  },
                  child: const Text('编辑'),
                ),
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('选择了分享');
                  },
                  child: const Text('分享'),
                ),
              ],
              okText: '关闭',
            );
          },
          child: const Text('6. startActions'),
        ),

        // 7. 使用 endActions
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '文件已准备好',
              title: const Text('下载完成'),
              okText: '打开',
              endActions: [
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('已删除');
                  },
                  child: const Text('删除'),
                ),
              ],
            );
          },
          child: const Text('7. endActions'),
        ),

        // 8. 同时使用 startActions 和 endActions
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '照片已保存到相册',
              title: const Text('保存成功'),
              startActions: [
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('查看照片');
                  },
                  child: const Text('查看'),
                ),
              ],
              okText: '分享',
              endActions: [
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('已删除');
                  },
                  child: const Text('删除'),
                ),
              ],
            );
          },
          child: const Text('8. start + end Actions'),
        ),

        // 9. 长文本消息
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '这是一段很长的文本消息，用于测试弹窗在显示大量文字时的表现。'
              '它应该能够正确地换行，并且保持良好的可读性。'
              '同时，弹窗的高度应该能够自适应内容，不会出现布局问题。',
              title: const Text('长文本测试'),
              okText: '我知道了',
            );
          },
          child: const Text('9. 长文本'),
        ),

        // 10. 不同的动画类型 - centerFade
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '使用淡入淡出动画',
              animationType: SmartAnimationType.centerFade_otherSlide,
              okText: '确定',
            );
          },
          child: const Text('10. 淡入动画'),
        ),

        // 11. 不同的动画类型 - centerScale (默认)
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '使用缩放动画（默认）',
              animationType: SmartAnimationType.centerScale_otherSlide,
              okText: '确定',
            );
          },
          child: const Text('11. 缩放动画'),
        ),

        // 12. 警告类弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '此操作无法撤销，确定要继续吗？',
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.warning_amber_rounded, color: Colors.orange),
                  SizedBox(width: 8),
                  Text('警告'),
                ],
              ),
              okText: '继续',
              cancelText: '取消',
            );
          },
          child: const Text('12. 警告弹窗'),
        ),

        // 13. 成功类弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '您的更改已成功保存',
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 8),
                  Text('成功'),
                ],
              ),
              okText: '好的',
              removeCancelButton: true,
            );
          },
          child: const Text('13. 成功弹窗'),
        ),

        // 14. 错误类弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '网络连接失败，请检查您的网络设置后重试。',
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.error_outline, color: Colors.red),
                  SizedBox(width: 8),
                  Text('错误'),
                ],
              ),
              okText: '重试',
              cancelText: '取消',
            );
          },
          child: const Text('14. 错误弹窗'),
        ),

        // 15. 带输入框的自定义内容
        ElevatedButton(
          onPressed: () {
            final controller = TextEditingController();
            showIosDialog(
              '',
              title: const Text('输入名称'),
              content: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: '请输入名称',
                  border: OutlineInputBorder(),
                ),
              ),
              okText: '确定',
              cancelText: '取消',
            );
          },
          child: const Text('15. 带输入框'),
        ),

        // 16. 空消息测试（不应该显示）
        ElevatedButton(
          onPressed: () {
            showIosDialog('');
            showToast('空消息不会显示弹窗');
          },
          child: const Text('16. 空消息测试'),
        ),

        // 17. 多行标题
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '这是详细的说明内容',
              title: const Text('这是一个\n多行标题'),
              okText: '确定',
            );
          },
          child: const Text('17. 多行标题'),
        ),

        // 18. 极简弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '操作成功',
              okText: 'OK',
              removeCancelButton: true,
            );
          },
          child: const Text('18. 极简弹窗'),
        ),

        // 19. 复杂操作弹窗
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '选择要执行的操作',
              title: const Text('文件操作'),
              startActions: [
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('复制');
                  },
                  child: const Text('复制'),
                ),
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('移动');
                  },
                  child: const Text('移动'),
                ),
                TextButton(
                  onPressed: () {
                    closeIosDialog();
                    showToast('重命名');
                  },
                  child: const Text('重命名'),
                ),
              ],
              okText: '取消',
            );
          },
          child: const Text('19. 多操作弹窗'),
        ),

        // 20. 测试关闭功能
        ElevatedButton(
          onPressed: () {
            showIosDialog(
              '这个弹窗会在3秒后自动关闭',
              title: const Text('自动关闭测试'),
              okText: '确定',
            );
            Future.delayed(const Duration(seconds: 3), () {
              closeIosDialog();
              showToast('弹窗已自动关闭');
            });
          },
          child: const Text('20. 自动关闭测试'),
        ),
      ],
    );
  }
}
