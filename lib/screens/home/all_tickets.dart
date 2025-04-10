import 'package:flutter/material.dart';
import 'package:tickets_application/base/res/styles/app_styles.dart';
import 'package:tickets_application/base/utils/app_json.dart';
import 'package:tickets_application/base/utils/app_routes.dart';
import 'package:tickets_application/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      appBar: AppBar(
        backgroundColor: const Color(0xffeeedf2),
        title: Text(
          "All Tickets",
          style: AppStyles.headLineStyle2.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        print("basyldy on the ticket $index");

                        Navigator.pushNamed(context, AppRoutes.ticketScreen,
                            arguments: {"index": index});
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
