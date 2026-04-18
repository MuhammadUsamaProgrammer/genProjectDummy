// part of '../../skilltree.dart';

// enum AppRoutes {
//   home('home', '/home'),
//   signIn('sign-in', '/sign-in'),
//   signInByHome('sign-in-by-home', '/sign-in'),

//   addChild('add-child', '/add-child'),
//   createProfile('create-profile', '/create-profile'),
//   // addChildCreateProfile('add-child-create-profile', '/create-profile'),
//   verifyNumber('verify-number', '/verify-number'),
//   pendingAccount('pending-account', '/pending-account'),
//   approvedAccount('approved-account', '/approved-account'),
//   signUp('sign-up', '/sign-up'),
//   tutorDashboard('tutor-dashboard', '/tutor/dashboard'),
//   tutorBook('tutor-book', '/tutor/book'),
//   tutorCalendar('tutor-calendar', '/tutor/calendar'),
//   tutorChat('tutor-chat', '/tutor/chat'),
//   tutorProfile('tutor-profile', '/tutor/profile'),
//   tutorStudentProfile('tutor-student-profile', '/tutor/student/profile'),
//   studentProgressScreen('student-progress-screen', '/student/progress'),
//   childProgressScreen('child-progress-screen', '/child/progress'),
//   tutorDashboardHome('tutor-dashboard-home', '/tutor/dashboard/home'),
//   tutorStudents('tutor-students', '/tutor/students'),
//   addSession('add-session', '/tutor/sessions/add'),
//   tutorFilesPage('tutor-files', '/tutor/files'),
//   tutorEarnings('tutor-earnings', '/tutor/earnings'),
//   tutorTransactionsHistory(
//     'tutor-transactions-history',
//     '/tutor/transactions-history',
//   ),
//   regularWorkSchedule('regular-work-schedule', '/regular/work/schedule'),
//   setSchedule('set-schedule', '/set-schedule'),
//   tutorChats('tutor-chats', '/tutor/chats'),
//   tutorSessionDetail('tutor-session-detail', '/tutor/session-detail'),
//   tutorChatDetail('tutor-chat-detail', '/tutor/chat/detail'),
//   bookNow('book-now', '/book-now'),
//   showAllTutors('show-all-tutors', '/show-all-tutors'),
//   allSubjects('all-subjects', '/all-subjects'),
//   bookNowSummary('book-now-summary', '/book-now-summary'),
//   payment('payment-method', '/payment-method'),
//   bookingSuccess('booking-success', '/booking-success'),

//   showAllTutorsGuest('show-all-tutors-guest', '/show-all-tutors-guest'),
//   bookNowGuest('book-now-guest', '/book-now-guest'),
//   bookNowSummaryGuest('book-now-summary-guest', '/book-now-summary-guest'),
//   paymentGuest('payment-method-guest', '/payment-method-guest'),
//   bookingSuccessGuest('booking-success-guest', '/booking-success-guest'),
//   allSubjectsGuest('all-subjects-guest', '/all-subjects-guest'),
//   locationSelectionView('location-selection', '/location-selection'),

//   userSessions('user-sessions', '/user-sessions'),
//   userSessionDetail('user-session-detail', '/user/session-detail'),
//   userProfile('user-profile', '/user-profile'),
//   userCalendar('user-calendar', '/user-calendar'),
//   userChat('user-chat', '/user-chat'),
//   userChatDetail('user-chat-detail', '/user/chat/detail'),
//   userMyFilesByHome('user-my-files-by-home', '/user/my-files'),
//   userMyFilesBySessions('user-my-files-by-sessions', '/user/my-files'),
//   userMyFilesByChat('user-my-files-by-chat', '/user/my-files'),
//   userMyFilesByCalender('user-my-files-by-calender', '/user/my-files'),
//   userMyFilesByProfile('user-my-files-by-profile', '/user/my-files'),
//   userMyWalletByHome('user-my-wallet-by-home', '/user/my-wallet'),
//   userMyWalletBySessions('user-my-wallet-by-sessions', '/user/my-wallet'),
//   userMyWalletByChat('user-my-wallet-by-chat', '/user/my-wallet'),
//   userMyWalletByCalender('user-my-wallet-by-calender', '/user/my-wallet'),
//   userMyWalletByProfile('user-my-wallet-by-profile', '/user/my-wallet'),
//   userTransactionsHistoryByHome(
//     'user-transactions-history-by-home',
//     '/user/transactions-history',
//   ),
//   userTransactionsHistoryBySessions(
//     'user-transactions-history-by-sessions',
//     '/user/transactions-history',
//   ),
//   userTransactionsHistoryByChat(
//     'user-transactions-history-by-chat',
//     '/user/transactions-history',
//   ),
//   userTransactionsHistoryByCalender(
//     'user-transactions-history-by-calender',
//     '/user/transactions-history',
//   ),
//   userTransactionsHistoryByProfile(
//     'user-transactions-history-by-profile',
//     '/user/transactions-history',
//   ),
//   editTutorProfile('edit-tutor-profile', '/edit-tutor-profile'),
//   editUserProfile('edit-user-profile', '/edit-user-profile'),
//   editUserProfileByHome('edit-user-profile-by-home', '/user/edit-user-profile'),
//   editUserProfileBySessions(
//     'edit-user-profile-by-session',
//     '/user/edit-user-profile',
//   ),
//   editUserProfileByChat('edit-user-profile-by-chat', '/user/edit-user-profile'),
//   editUserProfileByCalender(
//     'edit-user-profile-by-calender',
//     '/user/edit-user-profile',
//   ),
//   editUserProfileByProfile(
//     'edit-user-profile-by-profile',
//     '/user/edit-user-profile',
//   );

//   final String name;
//   final String path;

//   const AppRoutes(this.name, this.path);

//   static String get initialLocation => AppRoutes.home.path;

//   static List<AppRoutes> get publicRoutes => [signIn];

//   static bool isPublicRoute(GoRouterState state) {
//     final fullPath = state.fullPath;

//     return fullPath != null &&
//         publicRoutes.any((p) {
//           return fullPath.startsWith(p.path);
//         });
//   }
// }
