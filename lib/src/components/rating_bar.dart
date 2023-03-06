import 'package:flutter/material.dart';

import 'star.dart';

class RatingBar extends StatefulWidget {
  final int rating;
  final int quantity;
  final ValueChanged<int> onChangeValue;
  const RatingBar(
    this.rating,
    this.onChangeValue, {
    this.quantity = 5,
    Key? key,
  }) : super(key: key);

  @override
  RatingBarState createState() => RatingBarState();
}

class RatingBarState extends State<RatingBar> with TickerProviderStateMixin {
  List<Widget> stars = [];
  int value = 0;

  @override
  void initState() {
    super.initState();

    value = widget.rating;
  }

  Widget createStar(int position) {
    return Star(
      value >= position,
      onTap: () => _animateStars(position),
      size: 30,
      key: Key('star-$position'),
    );
  }

  _animateStars(int selected) async {
    setState(() => value = selected);
    widget.onChangeValue(selected);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];

    for (var i = 0; i < widget.quantity; i++) {
      stars.add(createStar(i + 1));
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: stars,
    );
  }
}
