import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aseron_mobileprog/main.dart';

void main() {
  testWidgets('Facebook replication app smoke test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MainApp());

    // Check Facebook AppBar
    expect(find.text('Facebook'), findsOneWidget);

    // Check Newsfeed posts
    expect(find.text('Tony Stark'), findsOneWidget);
    expect(find.text('Steve Rogers'), findsOneWidget);
    expect(find.text('Peter Parker'), findsOneWidget);
    expect(find.text('Natasha Romanoff'), findsOneWidget);

    // Check bottom navigation
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
  });
}
