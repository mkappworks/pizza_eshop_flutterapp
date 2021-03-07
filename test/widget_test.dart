import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pizza_eshop_flutterapp/main.dart';

void main() {
  testWidgets('check for container in HomeScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
