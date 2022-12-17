import 'package:flutter/material.dart';

import '../../../core/exceptions/failure.dart';
import '../../theme/insets/core_page_space.dart';
import '../../theme/shape/core_shape.dart';
import '../box/core_space_box.dart';
import '../button/core_button.dart';
import '../text/core_text.dart';

/// [CoreErrorDialog] is a widget that shows an error dialog.
class CoreErrorDialog extends StatelessWidget {
  /// [CoreErrorDialog] constructor.
  const CoreErrorDialog(
      {super.key, required this.failure, required this.completeButtonText});

  /// [failure] is a [Failure] object.
  final Failure failure;

  final String completeButtonText;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: const CoreSpace.allMd(),
      shape: CoreShape.allLg(),
      content: SizedBox(
        height: size.height * 0.1,
        width: size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CoreSpaceBox.allLg(),
            const Icon(
              Icons.error,
              size: 24,
            ),
            const CoreSpaceBox.allMd(),
            CoreText.title(failure.message),
          ],
        ),
      ),
      actions: [
        CoreButton.classic(
          () => Navigator.of(context).pop(),
          text: completeButtonText,
        ),
      ],
    );
  }
}

/// [CoreErrorDialog] is a widget that shows an error dialog.
extension CoreErrorDialogExtension on CoreErrorDialog {
  /// [show] shows the dialog.
  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => this,
    );
  }
}
