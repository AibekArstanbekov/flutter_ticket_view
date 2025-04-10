import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tickets_application/screens/home/home_screen.dart';
import 'package:tickets_application/screens/search/search_screen.dart';
import 'package:tickets_application/screens/ticket/ticket_screen.dart';

//BottomNavBar bul astyndagy 4 Icons , ar birin baskanda özgöröt
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile")),
  ];
  //bottomNavBar index pageter  almashat,özgöröt > home,search,ticket,profile

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      //astyndagy bottom icons list alat
      bottomNavigationBar: BottomNavigationBar(
        //currenIndex Icondy baskanda  coloryn özgörtöt,kara
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //birinchi icondyn coloru
        selectedItemColor: Colors.blueGrey,
        //akyrky icondyn coloru
        unselectedItemColor: const Color(0xff526400),
        //label astyndagy attardy ochürüp koidu
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_search_filled,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_ticket_filled,
              ),
              label: "Tickets"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
