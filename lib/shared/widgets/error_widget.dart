part of '../../wird_book.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;

  const CustomErrorWidget({super.key, this.message = "Something went wrong"});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InterText(
        message,
        color: AppColors.primary,
        fontWeight: FontWeight.w500,
        size: 16,
      ),
    );
  }
}
