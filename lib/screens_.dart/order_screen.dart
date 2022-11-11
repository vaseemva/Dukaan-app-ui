
import 'package:flutter/material.dart';

import '../widget/additionalinfo.dart';
import '../widget/customerinfo.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({
    Key? key,
    required this.Date,
    required this.Price,
    required this.Time,
    required this.imageURL,
    required this.orderNo,
    required this.ProductName,
    required this.Size,
  }) : super(key: key);
  final String imageURL;
  final String Price;
  final String orderNo;
  final String Date;
  final String Time;
  final String ProductName;

  final String Size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #$orderNo'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$Date,$Time',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Delivered',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                const Divider(thickness: 1.5),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '1 ITEM',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.receipt_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'RECEIPT',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                          image: NetworkImage(imageURL),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ProductName,
                            style: const TextStyle(fontSize: 13),
                          ),
                          const Text(
                            '1 Piece',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          Text(
                            'Size:$Size',
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 12),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(184, 183, 220, 239),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 78, 135, 183)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' x ₹$Price',
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                  const SizedBox(width: 125),
                                  Text(
                                    '₹$Price',
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 14),
                const Divider(thickness: 1.5),
                const SizedBox(height: 8),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Item Total',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '₹$Price',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Delivery',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'FREE',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Grand Total',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '₹$Price',
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(thickness: 1.5),
                customerinfo(),
                additionalinfo(),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'Share Receipt',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
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