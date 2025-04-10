import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tickets_application/base/res/media.dart';
import 'package:tickets_application/base/res/styles/app_styles.dart';
import 'package:tickets_application/base/utils/app_json.dart';
import 'package:tickets_application/base/utils/app_routes.dart';

import 'package:tickets_application/base/widgets/app_double_text.dart';
import 'package:tickets_application/base/widgets/ticket_view.dart';
import 'package:tickets_application/screens/home/widgets/hotel.dart';
//HomePage birinchi page ailana turgan kylysh kerek ekrandy
//ekrandyn jogoru jagyn jasadym , good morning, book tickets, logo, search icon

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    //logo container right
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            AppMedia.logo,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text("  Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                //text widget
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smalText: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                // Ticket widget NYC LON
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: ticketList
                          .take(2)
                          .map((singleTicket) =>
                              TicketView(ticket: singleTicket))
                          .toList()),
                ),

                const SizedBox(height: 40),
                //text widget
                AppDoubleText(
                  bigText: 'Hotels',
                  smalText: 'View all',
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                const SizedBox(height: 20),
                //Hotel widget scroll
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(2)
                        .map(
                          (singleHotel) => Hotel(hotel: singleHotel),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
