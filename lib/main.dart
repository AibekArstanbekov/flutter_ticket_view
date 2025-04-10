import 'package:flutter/material.dart';
import 'package:tickets_application/base/bottom_nav_bar.dart';
import 'package:tickets_application/base/utils/app_routes.dart';
import 'package:tickets_application/screens/home/all_hotels.dart';
import 'package:tickets_application/screens/home/all_tickets.dart';
import 'package:tickets_application/screens/hotel_details.dart';
import 'package:tickets_application/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetails: (context) => const HotelDetails(),
      },
    );
  }
}
