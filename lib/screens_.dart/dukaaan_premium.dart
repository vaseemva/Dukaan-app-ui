import 'package:flutter/material.dart';
import 'package:ui_screens_project/widget/contactBox.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widget/dukaan_premium_card.dart';
import '../widget/expansiontile.dart';
import '../widget/features.dart.dart';

class Dukaan extends StatefulWidget {
  const Dukaan({Key? key}) : super(key: key);

  @override
  State<Dukaan> createState() => _DukaanState();
}

class _DukaanState extends State<Dukaan> {
  final videoURL = "https://youtu.be/id1E0lqnUtY";
  late YoutubePlayerController _controller;

  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
              const Positioned(
                child: Card(
                  color: Colors.white,
                  child: DukaanPremiumCard(),
                  margin: EdgeInsets.only(left: 20, right: 20),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Features',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              features(
                icon: Icons.language_outlined,
                title: 'Custom domain name',
                Subtitle:
                    'Get your own custom domain and build your brand on the internet.',
              ),
              SizedBox(height: 15),
              features(
                  icon: Icons.verified_outlined,
                  title: 'Verified Seller Badge',
                  Subtitle:
                      'Get green verified badge unfer your store name and build trust'),
              SizedBox(height: 15),
              features(
                  icon: Icons.laptop_windows_sharp,
                  title: 'Dukaan For PC',
                  Subtitle:
                      'Access all the exclusive premium fearures on dukaan for PC'),
              SizedBox(height: 15),
              features(
                  icon: Icons.headset_mic_outlined,
                  title: 'Priority Support',
                  Subtitle:
                      'Get your questions resolved with our priority customer suppert'),
              SizedBox(height: 15),
              const Divider(thickness: 3),
            ],
          ),
          SizedBox(height: 10),
          //what is dukaan premium && Youtube
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Frequently asked questions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  expansionTile(
                    title: 'What types of business can use dukaan premium ?',
                    subtitle:
                        'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand anyone who wants to sell their products/services online.Dukaan is the perfect platform for you',
                  ),
                  expansionTile(
                    title: 'What is your refund policy ?',
                    subtitle: '',
                  ),
                  expansionTile(
                    title:
                        'Will there be an automatic charge after the paid trial ?',
                    subtitle: '',
                  ),
                  expansionTile(
                    title: 'What payment method do you offer ?',
                    subtitle: '',
                  ),
                  expansionTile(
                    title: 'What happens when my free trial ends ?',
                    subtitle: '',
                  ),
                  expansionTile(
                    title: 'What are the terms for the custom domain ?',
                    subtitle: '',
                  ),
                ],
              ),
            ],
          ),
          const Divider(thickness: 3),
          const SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Need help ? Get in touch',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 contactBox (
                    title: 'Live Chat',
                    icon: Icons.messenger_outline_sharp,
                  ),
                  contactBox(title: 'Phone Call', icon: Icons.phone_outlined),
                ],
              )
            ],
          ),
          SizedBox(height: 14),
          Divider(thickness: 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: Text('Select Domain')),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get Premium'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}