import 'package:flutter/material.dart';
import 'package:tickets_application/base/res/styles/app_styles.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Hotel titel"),
              background: Image.network(
                "https://blogger.googleusercontent.com/img/a/AVvXsEhAUGBdK9Fge6HHWYqDvSsHcXI-sEbPAeK2Wv9pmkMQDZFMue_yuKeG9Zo2U1TG6FDJxIQsZOysu523m3q-U-jevExAAkw9GXf-n4IlgxehbloK3IvCfjueskokf7qSTgHm4050qUpkjwGU77bkgFyRv_J4LEh7RNtuTmUuL8VLGG-Gq57jB-w=w640-h412",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "In this article ,we will create  custom scroolble app bar with a backgraound image in Flutter.The app bar will srink as the user scrools up, and it will include a back button.below the image we will display some duiscriptive text with a More or Less button to show or hide additional text.Finally we will add a section to display recent images in a horizontall list"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: AppStyles.headLineStyle2,
                  ),
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfRbolCppceJ9-mDcnclZGHr_HozgvMPwf9g&s",
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
