import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/payment_box.dart';
import '../widget/transaction_tile.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payments'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline))
        ],
        
      ),
      body: SingleChildScrollView(  child: Padding(
       
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 238, 237, 237), width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(9))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text(
                        'A free limit up to which you will receive the online payments directly in your bank.',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top: 9),
                        child: const LinearProgressIndicator(
                          value: 0.3,
                        ),
                      ),
                      SizedBox(height: 8),
                      const Text(
                        '36,668 left out of ₹50,000',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Increase limit'),
                        style: ElevatedButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Default Method'),
                        SizedBox(width: 75),
                        Text(
                          'Online Payments',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 13),
                    Row(
                      children: const [
                        Text('Payment Profile'),
                        SizedBox(width: 95),
                        Text(
                          'Bank Account',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Payments Overview',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 75),
                        Text(
                          'Life Time',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PaymentBox(
                            color: Colors.orange,
                            title: 'AMOUNT ON HOLD',
                            price: '0'),
                        PaymentBox(
                            color: const Color.fromARGB(255, 59, 209, 54),
                            title: 'AMOUNT RECEIVED',
                            price: '13,332'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Text('Transactions',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'On hold',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () {},
                          child: const Text('Payouts(15)'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const StadiumBorder()),
                          onPressed: () {},
                          child: const Text(
                            'Refunds',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const TranscationProducts(
                      Date: 'JUL 12',
                      OrderNo: '5478427',
                      Price: '799',
                      Time: '02:05 PM',
                      imageURL:
                          'https://tse3.mm.bing.net/th?id=OIP.SNB697Wzq56oxhPe1bXVZQHaHa&pid=Api&P=0',
                      ProductName: 'WOODLAND | NAVY',
                      Size: 'M',
                    ),
                    const TranscationProducts(
                      Date: 'Jan 04',
                      OrderNo: '82848283',
                      Price: '799',
                      Time: '01:00 AM',
                      imageURL:
                          'https://www.mydesignation.com/wp-content/uploads/2021/10/KARMA-TSHIRT-mydesignation-image.jpg',
                      ProductName: 'BLACK | H&M',
                      Size: 'XL',
                    ),
                    const TranscationProducts(
                      Date: 'Sep 47',
                      OrderNo: '8278472',
                      Price: '899',
                      Time: '11:00 Am',
                      imageURL:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ut6einyGFNhbekeMbFc_XpzmxYZdCTJYhg&usqp=CAU',
                      ProductName: 'EXPLORE | BLUE',
                      Size: 'XXXL',
                    ),
                    const TranscationProducts(
                      Date: 'Aug 01',
                      OrderNo: '187418479',
                      Price: '499',
                      Time: '03:30 Pm',
                      imageURL:
                          'https://rukminim1.flixcart.com/image/832/832/klcmoi80/shirt/y/p/a/m-bnd-volume-marmic-fab-original-imagyhnjztevpzyn.jpeg?q=70',
                      ProductName: 'MEN |  SHIRT',
                      Size: 'L',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}