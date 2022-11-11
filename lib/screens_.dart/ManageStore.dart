import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_screens_project/widget/special_box.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({super.key});

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 226, 226),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Manage Store'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 1.5,
          children: [
            GestureDetector(
              child: specialBox(
                  icon: Icons.announcement,
                  text: 'Marketing Design',
                  color: Colors.orange),
            ),
            GestureDetector(
              child: specialBox(
                  icon: Icons.currency_rupee,
                  text: 'Online Payments',
                  color: Colors.green),
            ),
            GestureDetector(
              child: specialBox(
                  icon: Icons.discount_rounded,
                  text: 'Discount Coupons',
                  color: Color.fromARGB(255, 234, 217, 89)),
            ),
            GestureDetector(
              child: specialBox(
                  icon: Icons.people,
                  text: 'My Customers',
                  color: Color.fromARGB(255, 120, 238, 109)),
            ),
            GestureDetector(
              child: specialBox(
                  icon: Icons.qr_code_2,
                  text: 'Scan QR code',
                  color: Colors.grey),
            ),
            GestureDetector(
              child: specialBox(
                  icon: Icons.monetization_on,
                  text: 'Extra Charges',
                  color: Colors.orange),
            ),
            GestureDetector(
              child: specialBox(
                icon: Icons.notes,
                text: 'Order Form',
                color: Colors.pink,
                trailing: Container(
                  height: 20,
                  width: 40,
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue.shade700,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.request_page_sharp,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.layers,
                ),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
    
  }
}
