import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab2_flutter/main.dart';

void main() {
  testWidgets('Navigation switches every tab and returns to the home image',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.text('Good morning'), findsOneWidget);
    expect(find.byKey(const Key('booking-logo')), findsOneWidget);
    expect(tester.takeException(), isNull);
    for (final icon in <IconData>[
      Icons.search_outlined,
      Icons.airplane_ticket_outlined,
      Icons.person_outline,
      Icons.home_outlined
    ]) {
      await tester.tap(find.byIcon(icon));
      await tester.pumpAndSettle();
      final bar =
          tester.widget<BottomNavigationBar>(find.byType(BottomNavigationBar));
      final label = bar.items[bar.currentIndex].label!;
      expect(
          find.descendant(of: find.byType(Scaffold), matching: find.text(label == 'Home' ? 'Book Tickets' : label)).first, findsOneWidget);
      expect(tester.takeException(), isNull);
    }
  });
  testWidgets('Header fits a narrow phone with larger text', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 1.5;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}

