import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../text_styles.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool fromBottom;
  final BuildContext pageContext;

  CustomAppBar({
    required this.title,
    required this.pageContext,
    this.fromBottom = false,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      title: Text(title, style: MainTextStyles.bodyLargeBold),
      leading: (ModalRoute.of(context)?.canPop ?? false)
          ? IconButton(
              icon: Icon(
                (fromBottom
                    ? Icons.close_rounded
                    : Icons.arrow_back_ios_new_rounded),
              ),
              onPressed: () => Navigator.of(pageContext).pop(),
            )
          : null,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
    );
  }
}
