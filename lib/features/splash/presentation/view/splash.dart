part of '../../../../wird_book.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4A5568), Color(0xFF2D3748), Color(0xFF1A202C)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Title
                  InterText(
                    'HIJAMA CLINIC',
                    size: 28,
                    color: AppColors.white,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3,
                  ),
                  const SizedBox(height: 40),

                  // Splash Card
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxWidth: 400),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Welcome text
                        InterText(
                          'Welcome to Wird Book',
                          size: 20,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        InterText(
                          'Loading your experience...',
                          size: 14,
                          color: AppColors.color8A94A6,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),

                        // Progress indicator
                        AnimatedBuilder(
                          animation: _animation,
                          builder: (context, child) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: LinearProgressIndicator(
                                      value: _animation.value,
                                      minHeight: 8,
                                      backgroundColor: AppColors.colorC1C7D0
                                          .withOpacity(0.3),
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                            AppColors.color3182CE,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                InterText(
                                  '${(_animation.value * 100).toInt()}%',
                                  size: 12,
                                  color: AppColors.color8A94A6,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
