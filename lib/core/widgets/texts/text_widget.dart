import 'package:app_movie_api/core/config/movies_colors.dart';
import 'package:app_movie_api/core/config/moviesapptextstyle.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  final Color? color;
  final TextOverflow? overflow;

  const TextWidget({
    super.key,
    required this.text,
    required this.style,
    this.textAlign,
    this.color,
    this.overflow,
  });

  TextWidget.bold(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? Moviesapptextstyle.getNormalBoldStyle;
  TextWidget.title(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? Moviesapptextstyle.getTitleSytle;
  TextWidget.normal(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? Moviesapptextstyle.getNormalStyle;
  TextWidget.small(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? Moviesapptextstyle.getSmallStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        color: color ?? MoviesAppColors.whiteColor,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
