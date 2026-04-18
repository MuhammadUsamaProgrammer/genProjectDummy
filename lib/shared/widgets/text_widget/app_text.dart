part of '../../../wird_book.dart';

// class InterText extends Text {
//   static const String fontFamily = 'Gilroy';
//
//   InterText(
//     super.data, {
//     super.key,
//     super.textAlign,
//     super.maxLines,
//     super.overflow,
//     Color color = AppColors.textColor,
//     double? height = 1,
//     double? letterSpacing,
//     double size = 14,
//     FontWeight fontWeight = FontWeight.w400,
//     FontStyle? fontStyle,
//     TextDecoration? decoration,
//   }) : super(
//          style: TextStyle(
//            fontFamily: fontFamily,
//            color: color,
//            fontSize: size,
//            height: height,
//            fontStyle: fontStyle,
//            fontWeight: fontWeight,
//            decoration: decoration,
//            decorationColor: color,
//            letterSpacing: letterSpacing,
//          ),
//        );
// }

class InterText extends StatelessWidget {
  const InterText(
    this.data, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.color = AppColors.textColor,
    this.height = 1,
    this.letterSpacing,
    this.size = 14,
    this.fontWeight = FontWeight.w400,
    this.fontStyle,
    this.decoration,
    this.textOverflow,
  });

  final String? data;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color color;
  final double? height;
  final double? letterSpacing;
  final double size;
  final FontWeight fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      textDirection: Directionality.of(context),
      overflow: textOverflow,
      style: GoogleFonts.inter(
        color: color,
        fontSize: size,
        height: height,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        decoration: decoration,
        decorationColor: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
