import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_architecture/shared/core_ui_kit/widget/text/core_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget createWidgetForTesting({Widget? child}) {
    return MaterialApp(
      home: Scaffold(body: child),
    );
  }

  testWidgets('Core Button', (widgetTester) async {
    const text = 'Test Text';
    final coreText = CoreText.body(text);
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreText));
    await widgetTester.pumpAndSettle();

    expect(find.widgetWithText(AutoSizeText, text), findsOneWidget);
  });
}
