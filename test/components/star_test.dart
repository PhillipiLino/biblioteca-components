import 'package:biblioteca_components/biblioteca_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('Create star not selected', (tester) async {
    // Arrange
    const star = Star(false);

    // Act
    const widget = MaterialApp(home: star);
    await tester.pumpWidget(widget);

    // Assert
    final icon = tester.widget(find.byType(Icon)) as Icon;
    expect(icon.size, 18);
    expect(icon.color, Colors.grey[200]);
  });

  testWidgets('Create star selected', (tester) async {
    // Arrange
    const star = Star(true);

    // Act
    const widget = MaterialApp(home: star);
    await tester.pumpWidget(widget);

    // Assert
    final icon = tester.widget(find.byType(Icon)) as Icon;
    expect(icon.size, 18);
    expect(icon.color, Colors.amber);
  });

  testWidgets('Create star with size 24', (tester) async {
    // Arrange
    const star = Star(true, size: 24);

    // Act
    const widget = MaterialApp(home: star);
    await tester.pumpWidget(widget);

    // Assert
    final icon = tester.widget(find.byType(Icon)) as Icon;
    expect(icon.size, 24);
    expect(icon.color, Colors.amber);
  });

  testWidgets('On tap star', (tester) async {
    // Arrange
    bool tapped = false;
    final star = Star(
      true,
      size: 24,
      onTap: () => tapped = true,
    );

    // Act
    final widget = MaterialApp(home: star);
    await tester.pumpWidget(widget);
    await tester.tap(find.byType(Icon));

    // Assert
    final icon = tester.widget(find.byType(Icon)) as Icon;
    expect(icon.size, 24);
    expect(icon.color, Colors.amber);
    expect(tapped, isTrue);
  });
}
