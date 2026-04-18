part of '../../../wird_book.dart';

class AppButton extends ConsumerWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.border = false,
    this.isDisabled = false,
    this.txtColor,
    this.icon,
    this.buttonSize,
    this.isLoading = false,
    this.color,
    this.fontWeight,
  });

  final VoidCallback onPressed;
  final Widget? icon;
  final String title;
  final Size? buttonSize;
  final bool isLoading;
  final bool border;
  final bool isDisabled;
  final Color? color;
  final Color? txtColor;
  final FontWeight? fontWeight;

  Color get textColor =>
      txtColor ??
      (isDisabled
          ? AppColors.primary
          : border
          ? AppColors.primary
          : AppColors.white);

  Color get backgroundColor =>
      color ??
      (isDisabled
          ? AppColors.primary
          : border
          ? Colors.white
          : AppColors.primary);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: buttonSize ?? Size(MediaQuery.of(context).size.width, 50),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,

        // Removes extra height
        overlayColor: WidgetStateColor.resolveWith((states) => AppColors.white),
        backgroundBuilder: (context, states, child) {
          return DecoratedBox(
            decoration: BoxDecoration(
              border: border ? Border.all(color: AppColors.primary) : null,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IntrinsicHeight(child: child),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: backgroundColor,
      ),
      onPressed: isLoading || isDisabled
          ? () {}
          : () async {
              bool checkInternet = await ref.read(checkInternetProvider.future);
              if (!checkInternet) {
                $showMessage(
                  "No internet connection. Please check your internet connection and try again.",
                  isError: true,
                );
                return;
              }
              onPressed();
            },
      child: isLoading
          ? LoadingWidget(height: 20, width: 20, color: textColor)
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: InterText(
                    title,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    color: textColor,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                    size: 16,
                  ),
                ),
                if (icon != null) ...[const SizedBox(width: 10), icon!],
              ],
            ),
    );
  }
}
