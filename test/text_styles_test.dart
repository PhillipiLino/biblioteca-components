import 'package:biblioteca_components/biblioteca_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('Check headingH1 style', (tester) async {
    // Arrange
    final style = MainTextStyles.headingH1;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.byType(Text)) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodyLargeRegular style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodyLargeRegular;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodyLargeBold style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodyLargeBold;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodyMediumRegular style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodyMediumRegular;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodyMediumBold style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodyMediumBold;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodySmallRegular style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodySmallRegular;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });

  testWidgets('Check bodySmallBold style', (tester) async {
    // Arrange
    final style = MainTextStyles.bodySmallBold;

    // Act
    final widget = MaterialApp(home: Text('Test', style: style));
    await tester.pumpWidget(widget);

    // Assert
    final text = tester.widget(find.text('Test')) as Text;
    expect(text.style, style);
  });
}
