part of '../../../wird_book.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool enabled;
  final Color? fillColor;
  final Widget? prefixIcon;

  const SearchBarWidget({
    super.key,
    this.hintText = 'Search',
    this.controller,
    this.onChanged,
    this.onTap,
    this.enabled = true,
    this.fillColor,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textColor,
    );
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      enabled: enabled,
      style: textStyle,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? AppColors.white,
        hintStyle: textStyle.copyWith(color: AppColors.color8A94A6),
        errorStyle: textStyle.copyWith(color: AppColors.fieldErrorColor),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child:
              prefixIcon ??
              Icon(Icons.search, color: AppColors.color8A94A6, size: 24),
        ),
        prefixIconConstraints: const BoxConstraints(maxWidth: 54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
      ),
    );
  }
}
