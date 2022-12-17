import 'package:clean_architecture/shared/core_ui_kit/widget/button/core_button.dart';
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

    var count = 0;
    final coreButton = CoreButton.classic(
      () async {
        await Future.delayed(const Duration(seconds: 1), () async {
          count++;
        });
      },
      text: text,
    );
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreButton));
    await widgetTester.pumpAndSettle();
    expect(find.widgetWithText(ElevatedButton, text), findsOneWidget);
    expect(find.text(text), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
    await widgetTester.tap(find.text(text));
    await widgetTester.pump(const Duration(seconds: 1));
    expect(count, 1);
  });

  testWidgets('Core Button Icon', (widgetTester) async {
    const icon = Icons.add;
    const text = 'Test Text';
    var count = 0;
    final coreButton = CoreButton.classicIcon(
      () {
        count++;
      },
      text: text,
      icon: icon,
    );
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreButton));
    await widgetTester.pumpAndSettle();
    expect(find.text(text), findsOneWidget);
    expect(find.byIcon(icon), findsOneWidget);
    await widgetTester.tap(find.byIcon(icon));
    await widgetTester.pumpAndSettle();
    expect(count, 1);
  });

  testWidgets('Core Text', (widgetTester) async {
    const text = 'Test Text';
    var count = 0;
    final coreButton = CoreButton.text(
      () {
        count++;
      },
      text: text,
    );
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreButton));
    await widgetTester.pumpAndSettle();
    expect(find.text(text), findsOneWidget);
    await widgetTester.tap(find.text(text));
    await widgetTester.pumpAndSettle();
    expect(count, 1);
  });

  testWidgets('Core Text Icon', (widgetTester) async {
    const icon = Icons.add;
    const text = 'Test Text';
    var count = 0;
    final coreButton = CoreButton.textIcon(
      () {
        count++;
      },
      text: text,
      icon: icon,
    );
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreButton));
    await widgetTester.pumpAndSettle();
    expect(find.text(text), findsOneWidget);
    expect(find.byIcon(icon), findsOneWidget);
    await widgetTester.tap(find.byIcon(icon));
    await widgetTester.pumpAndSettle();
    expect(count, 1);
  });

  testWidgets('Core IconButton', (widgetTester) async {
    const icon = Icons.add;

    var count = 0;
    final coreButton = CoreButton.icon(
      () {
        count++;
      },
      icon: icon,
    );
    await widgetTester.pumpWidget(createWidgetForTesting(child: coreButton));
    await widgetTester.pumpAndSettle();
    expect(find.byIcon(icon), findsOneWidget);
    await widgetTester.tap(find.byIcon(icon));
    await widgetTester.pumpAndSettle();
    expect(count, 1);
  });
}
