// part of '../../skilltree.dart';

// final navigatorKey = GlobalKey<NavigatorState>();
// final homeShellKey = GlobalKey<NavigatorState>();

// final routerConfigProvider = Provider((ref) {
//   // Watch sharedPreferencesProvider to rebuild router when it becomes available
//   final sharedPrefsAsync = ref.watch(sharedPreferencesProvider);

//   // Determine initial location based on saved user data
//   String initialLocation = AppRoutes.home.path;

//   if (sharedPrefsAsync.hasValue) {
//     final localData = ref.read(localDataProvider);
//     final userId = localData.getUserId;
//     final userType = localData.getUserType;

//     if (userId.isNotEmpty && userType == 'tutor') {
//       initialLocation = AppRoutes.tutorDashboard.path;
//     }
//   }

//   return GoRouter(
//     navigatorKey: navigatorKey,
//     initialLocation: initialLocation,
//     redirect: (context, state) {
//       final isPublicRoute = AppRoutes.isPublicRoute(state);
//       if (isPublicRoute) {
//         return null;
//       }

//       // final localData = ref.read(localDataProvider);
//       // final userId = localData.getUserId;

//       // final isLoggedIn = userId.isNotEmpty ;

//       // // If user is not logged in, allow navigation to home/sign-in pages
//       // if (!isLoggedIn) {

//       //   return AppRoutes.signIn.path;
//       // }

//       return null; // Allow navigation
//     },
//     routes: [
//       ///Tutor Dashboard
//       ShellRoute(
//         builder: (context, state, child) {
//           return BottomNavShell(appType: AppType.tutor, child: child);
//         },
//         routes: [
//           GoRoute(
//             path: AppRoutes.tutorDashboard.path,
//             name: AppRoutes.tutorDashboard.name,
//             builder: (context, state) => const TutorDashboardHome(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.tutorFilesPage.path,
//                 name: AppRoutes.tutorFilesPage.name,
//                 builder: (context, state) => const TutorFilesPage(),
//               ),
//               GoRoute(
//                 path: AppRoutes.setSchedule.path,
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.setSchedule.name,
//                 builder: (context, state) => const SetSchedulePage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.tutorEarnings.path,
//                 name: AppRoutes.tutorEarnings.name,
//                 builder: (context, state) => const TutorEarningsPage(),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.tutorTransactionsHistory.path,
//                     name: AppRoutes.tutorTransactionsHistory.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.tutorStudents.path,
//                 name: AppRoutes.tutorStudents.name,
//                 builder: (context, state) => const TutorStudents(),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.tutorStudentProfile.path,
//                     name: AppRoutes.tutorStudentProfile.name,
//                     builder: (context, state) => const TutorStudentProfile(),
//                   ),
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.studentProgressScreen.path,
//                     name: AppRoutes.studentProgressScreen.name,
//                     builder: (context, state) {
//                       final bool isTutor =
//                           state.uri.queryParameters['isTutor'] == 'true';
//                       return StudentProgressScreen(isTutor: isTutor);
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.tutorBook.path,
//             name: AppRoutes.tutorBook.name,
//             builder: (context, state) => const TutorSessions(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: 'add',
//                 name: AppRoutes.addSession.name,
//                 builder: (context, state) => const AddSessionPage(),
//                 routes: [],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.tutorSessionDetail.path,
//                 name: AppRoutes.tutorSessionDetail.name,
//                 builder: (context, state) => const TutorSessionDetailPage(
//                   status: TutorSessionStatus.published,
//                 ),
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.tutorCalendar.path,
//             name: AppRoutes.tutorCalendar.name,
//             builder: (context, state) => const TutorCalendar(),
//             routes: [
//               GoRoute(
//                 path: AppRoutes.regularWorkSchedule.path,
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.regularWorkSchedule.name,
//                 builder: (context, state) => const RegularWorkSchedule(),
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.tutorChat.path,
//             name: AppRoutes.tutorChat.name,
//             builder: (context, state) => const ChatsPage(),
//             routes: [
//               GoRoute(
//                 path: 'detail',
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.tutorChatDetail.name,
//                 builder: (context, state) {
//                   final name = state.uri.queryParameters['name'] ?? 'User';
//                   final avatarUrl = state.uri.queryParameters['avatarUrl'];
//                   final initials = state.uri.queryParameters['initials'];
//                   final chatId = int.tryParse(
//                     state.uri.queryParameters['chatId'] ?? '',
//                   );
//                   return ChatConversationPage(
//                     chatId: chatId ?? 0,
//                     name: name,
//                     avatarUrl: avatarUrl,
//                     initials: initials,
//                   );
//                 },
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.tutorProfile.path,
//             name: AppRoutes.tutorProfile.name,
//             builder: (context, state) => const TutorProfile(),
//             routes: [
//               GoRoute(
//                 path: AppRoutes.editTutorProfile.path,
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.editTutorProfile.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//             ],
//           ),
//           // TutorDashboardHome
//           GoRoute(
//             path: AppRoutes.tutorDashboardHome.path,
//             name: AppRoutes.tutorDashboardHome.name,
//             builder: (context, state) => const TutorDashboardHome(),
//           ),
//         ],
//       ),

//       ///Parent Dashboard
//       ShellRoute(
//         builder: (context, state, child) {
//           return BottomNavShell(appType: AppType.user, child: child);
//         },
//         routes: [
//           GoRoute(
//             path: AppRoutes.home.path,
//             name: AppRoutes.home.name,
//             builder: (context, state) => const V1HomePage(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.signIn.path,
//                 name: AppRoutes.signIn.name,
//                 builder: (context, state) {
//                   final isTutor =
//                       state.uri.queryParameters['isTutor'] == 'true';
//                   return SignInPage(isTutor: isTutor);
//                 },
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.signUp.path,
//                     name: AppRoutes.signUp.name,
//                     builder: (context, state) {
//                       final isTutor =
//                           state.uri.queryParameters['isTutor'] == 'true';
//                       final userType =
//                           (state.extra as Map<String, dynamic>)['userType']
//                               as UserType?;
//                       return SignUpPage(isTutor: isTutor, userType: userType);
//                     },
//                   ),

//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.addChild.path,
//                     name: AppRoutes.addChild.name,
//                     builder: (context, state) => const AddChild(),
//                   ),

//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.createProfile.path,
//                     name: AppRoutes.createProfile.name,

//                     builder: (context, state) {
//                       final firstName =
//                           state.uri.queryParameters['firstName'] ?? '';
//                       final lastName =
//                           state.uri.queryParameters['lastName'] ?? '';
//                       final isTutor =
//                           state.uri.queryParameters['isTutor'] == 'true';
//                       return CreateProfile(
//                         firstName: firstName,
//                         lastName: lastName,
//                         isTutor: isTutor,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.pendingAccount.path,
//                     name: AppRoutes.pendingAccount.name,
//                     builder: (context, state) => const PendingAccount(),
//                   ),
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.approvedAccount.path,
//                     name: AppRoutes.approvedAccount.name,
//                     builder: (context, state) => const ApprovedAccount(),
//                   ),
//                 ],
//               ),

//               GoRoute(
//                 path: AppRoutes.allSubjects.path,
//                 name: AppRoutes.allSubjects.name,
//                 builder: (context, state) => const AllSubjects(),
//               ),
//               GoRoute(
//                 path: AppRoutes.showAllTutors.path,
//                 name: AppRoutes.showAllTutors.name,
//                 builder: (context, state) => const ShowAllTutors(),
//               ),
//               GoRoute(
//                 path: AppRoutes.bookNow.path,
//                 name: AppRoutes.bookNow.name,
//                 builder: (context, state) => const BookNow(),
//                 routes: [
//                   GoRoute(
//                     path: AppRoutes.bookNowSummary.path,
//                     name: AppRoutes.bookNowSummary.name,
//                     builder: (context, state) => const BookNowSummary(),
//                   ),
//                   GoRoute(
//                     path: AppRoutes.payment.path,
//                     name: AppRoutes.payment.name,
//                     builder: (context, state) => const Payment(),
//                   ),
//                   //BookingSuccess
//                   GoRoute(
//                     path: AppRoutes.bookingSuccess.path,
//                     name: AppRoutes.bookingSuccess.name,
//                     builder: (context, state) => const BookingSuccess(),
//                   ),
//                 ],
//               ),

//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyFilesByHome.path,
//                 name: AppRoutes.userMyFilesByHome.name,
//                 builder: (context, state) => const MyFilesPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyWalletByHome.path,
//                 name: AppRoutes.userMyWalletByHome.name,
//                 builder: (context, state) =>
//                     const UserWalletPage(selectedIndex: 0),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.userTransactionsHistoryByHome.path,
//                     name: AppRoutes.userTransactionsHistoryByHome.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.editUserProfileByHome.path,
//                 name: AppRoutes.editUserProfileByHome.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.userSessions.path,
//             name: AppRoutes.userSessions.name,
//             builder: (context, state) => const UserSessions(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyFilesBySessions.path,
//                 name: AppRoutes.userMyFilesBySessions.name,
//                 builder: (context, state) => const MyFilesPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyWalletBySessions.path,
//                 name: AppRoutes.userMyWalletBySessions.name,
//                 builder: (context, state) =>
//                     const UserWalletPage(selectedIndex: 1),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.userTransactionsHistoryBySessions.path,
//                     name: AppRoutes.userTransactionsHistoryBySessions.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userSessionDetail.path,
//                 name: AppRoutes.userSessionDetail.name,
//                 builder: (context, state) => const UserSessionDetailPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.editUserProfileBySessions.path,
//                 name: AppRoutes.editUserProfileBySessions.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.userProfile.path,
//             name: AppRoutes.userProfile.name,
//             builder: (context, state) => const UserProfile(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyFilesByProfile.path,
//                 name: AppRoutes.userMyFilesByProfile.name,
//                 builder: (context, state) => const MyFilesPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyWalletByProfile.path,
//                 name: AppRoutes.userMyWalletByProfile.name,
//                 builder: (context, state) =>
//                     const UserWalletPage(selectedIndex: 4),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.userTransactionsHistoryByProfile.path,
//                     name: AppRoutes.userTransactionsHistoryByProfile.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 path: AppRoutes.editUserProfile.path,
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.editUserProfile.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.editUserProfileByProfile.path,
//                 name: AppRoutes.editUserProfileByProfile.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.childProgressScreen.path,
//                 name: AppRoutes.childProgressScreen.name,
//                 builder: (context, state) {
//                   final bool isTutor =
//                       state.uri.queryParameters['type'] == 'tutor';
//                   return StudentProgressScreen(isTutor: isTutor);
//                 },
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.userChat.path,
//             name: AppRoutes.userChat.name,
//             builder: (context, state) => const ChatsPage(),
//             routes: [
//               GoRoute(
//                 path: 'detail',
//                 parentNavigatorKey: navigatorKey,
//                 name: AppRoutes.userChatDetail.name,
//                 builder: (context, state) {
//                   final name = state.uri.queryParameters['name'] ?? 'User';
//                   final avatarUrl = state.uri.queryParameters['avatarUrl'];
//                   final initials = state.uri.queryParameters['initials'];
//                   final chatId = int.tryParse(
//                     state.uri.queryParameters['chatId'] ?? '',
//                   );
//                   return ChatConversationPage(
//                     chatId: chatId ?? 0,
//                     name: name,
//                     avatarUrl: avatarUrl,
//                     initials: initials,
//                   );
//                 },
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyFilesByChat.path,
//                 name: AppRoutes.userMyFilesByChat.name,
//                 builder: (context, state) => const MyFilesPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyWalletByChat.path,
//                 name: AppRoutes.userMyWalletByChat.name,
//                 builder: (context, state) =>
//                     const UserWalletPage(selectedIndex: 3),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.userTransactionsHistoryByChat.path,
//                     name: AppRoutes.userTransactionsHistoryByChat.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.editUserProfileByChat.path,
//                 name: AppRoutes.editUserProfileByChat.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//             ],
//           ),
//           GoRoute(
//             path: AppRoutes.userCalendar.path,
//             name: AppRoutes.userCalendar.name,
//             builder: (context, state) => const UserCalendar(),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyFilesByCalender.path,
//                 name: AppRoutes.userMyFilesByCalender.name,
//                 builder: (context, state) => const MyFilesPage(),
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.userMyWalletByCalender.path,
//                 name: AppRoutes.userMyWalletByCalender.name,
//                 builder: (context, state) =>
//                     const UserWalletPage(selectedIndex: 2),
//                 routes: [
//                   GoRoute(
//                     parentNavigatorKey: navigatorKey,
//                     path: AppRoutes.userTransactionsHistoryByCalender.path,
//                     name: AppRoutes.userTransactionsHistoryByCalender.name,
//                     builder: (context, state) =>
//                         const TransactionsHistoryPage(),
//                   ),
//                 ],
//               ),
//               GoRoute(
//                 parentNavigatorKey: navigatorKey,
//                 path: AppRoutes.editUserProfileByCalender.path,
//                 name: AppRoutes.editUserProfileByCalender.name,
//                 builder: (context, state) => const EditProfilePage(),
//               ),
//             ],
//           ),
//         ],
//       ),
//       // LocationSelectionView - Top level route for full screen
//       GoRoute(
//         path: AppRoutes.locationSelectionView.path,
//         name: AppRoutes.locationSelectionView.name,
//         builder: (context, state) =>
//             const LocationSelectionView(isReturn: true),
//       ),
//     ],
//   );
// });
