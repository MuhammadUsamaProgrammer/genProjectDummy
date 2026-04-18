part of '../../../wird_book.dart';

class BackAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const BackAppBar({super.key, required this.title, this.onBack});

  final String title;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: AppColors.colorF6F8FA,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      toolbarHeight: kToolbarHeight + 20,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: BackIcon(),
      ),
      title: InterText(title, size: 18, fontWeight: FontWeight.w700),
    );
  }

  @override
  Size get preferredSize => Size(600, kToolbarHeight + 17);
}
