// ignore_for_file: unused_field

import 'package:flutter/material.dart';

const _package = 'biblioteca_components';
const _path = 'lib/assets/images/';

class MainIllustrations {
  static const bookPlaceholder = AssetImage(
    '${_path}book-placeholder.png',
    package: _package,
  );

  static const emptyLibrary = AssetImage(
    '${_path}empty-library.png',
    package: _package,
  );
}
