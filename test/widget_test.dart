import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myfirstapp/main.dart';

void main() {
  testWidgets('The test screen is displayed.', (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    await tester.pumpWidget(const MyFirstApp());

    expect(find.text('スライドパズル'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
  });

  testWidgets('Click the Start button to display the puzzle screen.',
      (WidgetTester tester) async {

    await tester.binding.setSurfaceSize(const Size(400, 800));
    await tester.pumpWidget(const MyFirstApp());

    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('シャッフル'), findsOneWidget);
  });
}
