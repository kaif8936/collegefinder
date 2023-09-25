import 'package:collegefinder/screens/saved_screen.dart';
import 'package:collegefinder/screens/serach_screen.dart';
import 'package:collegefinder/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const SearchScreen(),
    const SavedScreen(),
    const SavedScreenTwo(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}



class SavedScreenTwo extends StatelessWidget {
  const SavedScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Screen Two'),
      ),
      body: const Center(
        child: Text('Saved Screen Two Content'),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Screen'),
      ),
      body: const Center(
        child: Text('Account Screen Content'),
      ),
    );
  }
}
