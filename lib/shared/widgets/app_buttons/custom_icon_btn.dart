part of '../../../wird_book.dart';

class CustomIconBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const CustomIconBtn({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(vertical: -4, horizontal: -4),
      ),
      icon: child,
    );
  }
}

class CustomTextBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Color color;

  const CustomTextBtn({
    super.key,
    this.onPressed,
    required this.title,
    this.color = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: color.withValues(alpha: 0.1),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: InterText(title, color: color, fontWeight: FontWeight.w600),
    );
  }
}
