import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_page.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            AppBar(
              foregroundColor: Colors.black,
              title: const Center(
                  child: Text(
                'Payment Method',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const SizedBox(
                      height: 80,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            'Pay with PayPal',
                            style: TextStyle(fontSize: 22),
                          ),
                          leading: Icon(
                            Icons.paypal,
                            size: 50,
                            color: Colors.blue,
                          ),
                          trailing: Icon(Icons.circle_notifications),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const SizedBox(
                      height: 80,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            'Pay with GPal',
                            style: TextStyle(fontSize: 22),
                          ),
                          leading: Icon(
                            Icons.paypal,
                            size: 50,
                            color: Colors.green,
                          ),
                          trailing: Icon(Icons.circle,
                              color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Payment Summery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '3 Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '3 Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          '3 Rooms',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const BookNow());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Payment Now',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
