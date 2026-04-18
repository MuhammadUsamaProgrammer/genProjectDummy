part of '../../wird_book.dart';

final GlobalKey<ScaffoldState> shellKey = GlobalKey<ScaffoldState>();

class BottomNavShell extends ConsumerStatefulWidget {
  final Widget child;
  const BottomNavShell({super.key, required this.child});

  @override
  ConsumerState<BottomNavShell> createState() => _BottomNavShellState();
}

class _BottomNavShellState extends ConsumerState<BottomNavShell> {
  List<Map<String, dynamic>> get bottomNavigationItems => [
    {'icon': Icons.home, 'route': AppRoutes.dashboard},
    {'icon': Icons.calendar_month_outlined, 'route': AppRoutes.splash},
    {'icon': Icons.add, 'route': AppRoutes.splash, 'isCenter': true},
    {
      'icon': FontAwesomeIcons.chartLine,
      'route': AppRoutes.splash,
      'size': 20.0,
    },
    {
      'icon': FontAwesomeIcons.userGear,
      'route': AppRoutes.splash,
      'size': 20.0,
    },
  ];

  Widget buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
      child: SizedBox(
        height: 65,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Bottom bar background and icons
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: AppColors.whiteF2, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First two icons
                      ...List.generate(2, (index) {
                        final item = bottomNavigationItems[index];
                        final isSelected =
                            index == 0; // Example: always select first item
                        return InkWell(
                          onTap: () {
                            context.go((item['route'] as AppRoutes).path);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                item['icon'] as IconData,
                                color: isSelected
                                    ? AppColors.primary
                                    : AppColors.color8A94A6,
                                size: 26,
                              ),
                              if (isSelected) const SizedBox(height: 4),

                              if (isSelected)
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.primary
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }),
                      // Spacer for center button
                      const SizedBox(width: 56),
                      // Last two icons
                      ...List.generate(2, (index) {
                        final item = bottomNavigationItems[index + 3];
                        final isSelected =
                            index ==
                            1; // Example: always select second item in last two icons
                        return InkWell(
                          onTap: () {
                            context.go((item['route'] as AppRoutes).path);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                item['icon'] as IconData,
                                color: isSelected
                                    ? AppColors.primary
                                    : AppColors.color8A94A6,
                                size: item.containsKey('size')
                                    ? item['size'] as double
                                    : 26,
                              ),
                              if (isSelected) const SizedBox(height: 4),
                              const SizedBox(height: 4),
                              if (isSelected)
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.primary
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),

            // Floating center button
            Positioned(
              top: -28,
              left: 0,
              right: 0,
              child: Center(
                child: InkWell(
                  onTap: () {
                    // showModalBottomSheet(
                    //   context: context,
                    //   isScrollControlled: true,
                    //   backgroundColor: Colors.transparent,
                    //   barrierColor: Colors.black.withOpacity(0.3),
                    //   builder: (BuildContext context) {
                    //     return AddBottomSheet();
                    //   },
                    // );
                  },
                  child: Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.white, width: 5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.25),
                          blurRadius: 32,
                          spreadRadius: 2,
                          offset: const Offset(0, 15),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        bottomNavigationItems[2]['icon'] as IconData,
                        color: Colors.white,
                        size: 42,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final dashboardState = ref.watch(dashboardPProvider);
    return Scaffold(
      key: shellKey,
      // appBar: appBarWidget(),
      body: Stack(
        children: [
          widget.child,
          // Positioned(top: 0, left: 0, right: 0, child: appBarWidget()),
          SizedBox(height: 100, child: appBarWidget()),
          Align(
            alignment: Alignment.bottomCenter,
            child: buildBottomNavigationBar(context),
          ),
        ],
      ),
      // bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }
}
