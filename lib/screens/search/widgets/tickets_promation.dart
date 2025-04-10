import 'package:flutter/material.dart';
import 'package:tickets_application/base/res/media.dart';
import 'package:tickets_application/base/res/styles/app_styles.dart';

class TicketsPromation extends StatelessWidget {
  const TicketsPromation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //foto conrainerdin syrtyndagy jashyl 20% container
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          width: size.width * .42,
          height: 435,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff48a878),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 2,
              ),
            ],
          ),
          // foto container 20% jasuulary bar
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppMedia.planeSit),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "20% discount on the early booking of this flight.Don't miss ",
                style: AppStyles.headLineStyle2,
              ),
            ],
          ),
        ),
        // jashylgych  container discount jasuu
        Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      width: size.width * .44,
                      height: 210,
                      decoration: BoxDecoration(
                        color: AppStyles.circleContainerColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discount\nfor survey",
                            style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Take the survey about our services and get discount",
                            style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //kök containerdin bürchhuna togolok border deco
                    //posisia berip jyldylsa bolot
                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 18,
                            color: AppStyles.circleColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                //orange container TakeLove
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .44,
                  height: 210,
                  decoration: BoxDecoration(
                    color: AppStyles.takeLoveColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Take Love",
                        style: AppStyles.headLineStyle2,
                      ),
                      Image.network(
                        "https://i.pinimg.com/originals/1e/89/4a/1e894a033f4446b31bdab7ce04d8ba60.png",
                        width: 80,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
