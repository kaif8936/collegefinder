import 'package:collegefinder/screens/college_list_screen.dart';
import 'package:collegefinder/screens/home_screen.dart';
import 'package:collegefinder/screens/saved_screen.dart';
import 'package:collegefinder/screens/serach_screen.dart';
import 'package:collegefinder/utils/routes.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.initial,
  routes: [
    GoRoute(
      path: Routes.initial,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: Routes.search,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: Routes.saved,
      builder: (context, state) => const SavedScreen(),
    ),
    GoRoute(
      path: Routes.savedtwo,
      builder: (context, state) => const SavedScreenTwo(),
    ),
    GoRoute(
      path: Routes.account,
      builder: (context, state) => const AccountScreen(),
    ),
    GoRoute(
      path: Routes.collegeListScreen,
      builder: (context, state) => const CollegeListScreen(),
    ),
  ],
);
