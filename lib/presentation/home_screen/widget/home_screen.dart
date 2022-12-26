import 'package:flutter/material.dart';
import 'package:work_api/presentation/companies_screen/widget/companies_screen.dart';
import 'package:work_api/presentation/jobs_screen/widget/jobs_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const JobsScreen(title: 'Jobs',),
    const CompaniesScreen(title: 'Companies',),
    Container(child:const Text("Input text",
              style: TextStyle(fontSize: 20)),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center,
            ),
            label: 'Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_city,
            ),
            label: 'Company',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.post_add,
            ),
            label: 'Add',
          ),
        ],
      ),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
