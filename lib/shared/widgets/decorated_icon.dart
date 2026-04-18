part of '../../wird_book.dart';

class DecoratedIcon extends StatelessWidget {
  final Widget image;
  final double height;
  final double width;
  final EdgeInsets? padding;
  final Color? color;

  const DecoratedIcon({
    super.key,
    required this.image,
    this.height = 42,
    this.width = 42,
    this.padding = const EdgeInsets.all(5.0),
    this.color = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      padding: padding,
      child: image,
    );
  }
}
