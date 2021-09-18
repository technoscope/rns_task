
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rns_task/ApiProvider/api_fetch.dart';
import 'package:rns_task/BreweryModel.dart';

import 'package:rns_task/main.dart';

void main() {
  testWidgets('Widget Testing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.tap(find.byIcon(Icons.my_location));
    await tester.pump();
  });

  //to verify that list populated or not
 test(Future<List<BreweryModel>> brewerylist, WidgetTester tester) async {
    for (var model in brewerylist) {
      final breweryNameFinder = find.text(model.name);
      await tester.ensureVisible(breweryNameFinder);
      expect(breweryNameFinder, findsOneWidget);
    }
  }
}

