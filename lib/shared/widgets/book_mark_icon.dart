part of '../../../wird_book.dart';

class BlurIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  const BlurIcon({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary, width: 1),
      ),
      child: CustomIconBtn(
        onPressed: onPressed,
        child: ClipOval(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
              // tileMode: TileMode.mirror,
            ),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.16),
              ),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  height: 16,
                  width: 16,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
