import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title:const Text('Additional Information'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share Dukaan App'),
            trailing:  Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.translate),
            title: Text('Change Language'),
            trailing:  Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.whatsapp),
            title: Text('Whatsapp Chat Support'),
            trailing:  Switch(value: isSwitched, onChanged: (value){
              setState(() {
                isSwitched=value;
              });
            }),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy Policy'),
          
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate us'),
          
          ),

          
        ],
      ),
    );
  }
}