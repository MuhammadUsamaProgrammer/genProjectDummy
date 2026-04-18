part of '../../wird_book.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () => context.pop(),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: AppColors.white,
        child: Center(
          child: Icon(Icons.arrow_back, color: AppColors.color333333, size: 24),
        ),
      ),
    );
  }
}
