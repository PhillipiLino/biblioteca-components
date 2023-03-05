import 'package:biblioteca_components/biblioteca_components.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Check book placeholder illustration', () {
    // Arrange
    const illustration = MainIllustrations.bookPlaceholder;

    // Assert
    expect(illustration.assetName, 'lib/assets/images/book-placeholder.png');
    expect(illustration.package, 'biblioteca_components');
  });

  test('Check empty library illustration', () {
    // Arrange
    const illustration = MainIllustrations.emptyLibrary;

    // Assert
    expect(illustration.assetName, 'lib/assets/images/empty-library.png');
    expect(illustration.package, 'biblioteca_components');
  });
}
