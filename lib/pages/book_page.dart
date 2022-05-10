import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/pages/payment_page.dart';

class BookNow extends StatelessWidget {
  const BookNow({Key? key}) : super(key: key);

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
                'Booking',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 9), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        child: Image.network(
                          'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=1320&height=746&fit=crop&format=pjpg&auto=webp',
                          width: 140,
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                Text(
                                  "Hotel location,and country",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                            const Text(
                              "Hotel name",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$369/Night",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 18,
                                      ),
                                      Text(
                                        "4.8(120 reviews)",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 1,
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Select time and date",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        spacing: 20,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: const Text(
                              'Today',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: const Text(
                              'Tomorrow',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: const Text(
                              'This Week',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: SizedBox(
                              width: 250,
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    'Chose from Commercial',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Total Rooms',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3 Rooms',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepOrangeAccent),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Slider(
                        activeColor: Colors.deepOrangeAccent,
                        inactiveColor: Colors.deepOrange.shade200,
                        value: .3,
                        onChanged: (double value) {},
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Bad Type",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        spacing: 20,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: const Text(
                              'Single',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print('book now clicked');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: const Text(
                              'Double Bed',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Total \$1200',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const Payment());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Confirm',
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
