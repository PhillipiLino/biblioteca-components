import 'package:biblioteca_components/biblioteca_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  int getSelectedStars(WidgetTester tester) {
    int selectedStars = 0;
    final icons = find.byType(Icon);
    for (var i = 0; i < icons.evaluate().length; i++) {
      final icon = tester.widget(icons.at(i)) as Icon;
      if (icon.color == Colors.amber) selectedStars++;
    }

    return selectedStars;
  }

  testWidgets('Create rating bar with rating 2', (tester) async {
    // Arrange
    const rating = 2;
    final bar = RatingBar(rating, (value) {});

    // Act
    final widget = MaterialApp(home: bar);
    await tester.pumpWidget(widget);

    // Assert
    final icons = find.byType(Icon);
    expect(icons, findsNWidgets(5));

    int selectedStars = 0;
    for (var i = 0; i < icons.evaluate().length; i++) {
      final icon = tester.widget(icons.at(i)) as Icon;
      if (icon.color == Colors.amber) selectedStars++;
    }

    expect(selectedStars, rating);
  });

  testWidgets('Create rating bar with quantity 3 and rating 1', (tester) async {
    // Arrange
    const rating = 1;
    const quantity = 3;
    final bar = RatingBar(rating, (value) {}, quantity: quantity);

    // Act
    final widget = MaterialApp(home: bar);
    await tester.pumpWidget(widget);

    // Assert
    final icons = find.byType(Icon);
    expect(icons, findsNWidgets(quantity));

    int selectedStars = 0;
    for (var i = 0; i < icons.evaluate().length; i++) {
      final icon = tester.widget(icons.at(i)) as Icon;
      if (icon.color == Colors.amber) selectedStars++;
    }

    expect(selectedStars, rating);
  });

  testWidgets('Create rating bar with 1 and tap third star', (tester) async {
    // Arrange
    int? tappedStar;
    const rating = 1;
    final bar = RatingBar(rating, (value) {
      tappedStar = value;
    });

    // Act
    final widget = MaterialApp(home: bar);
    await tester.pumpWidget(widget);
    final icons = find.byType(Icon);

    int selectedStars = getSelectedStars(tester);

    // Assert
    expect(icons, findsNWidgets(5));
    expect(selectedStars, rating);
    await tester.tap(find.byKey(const Key('star-3')));
    await tester.pump();

    expect(tappedStar, 3);

    selectedStars = getSelectedStars(tester);
    expect(selectedStars, 3);
  });
}
