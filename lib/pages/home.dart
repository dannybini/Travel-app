import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hotel_detail_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                Icon(
                  Icons.short_text_rounded,
                  size: 50,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text('Find New', style: TextStyle(fontSize: 18.0)),
          const SizedBox(height: 10),
          const Text(
            'Location',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('search clicked');
                    }
                  },
                  icon: const Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'Enter here for search',
                /* suffix: IconButton(
                      onPressed: () {
                        print('search clicked');
                      },
                      icon: const Icon(Icons.search),
                    )*/
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cox\'s Bazar Hotels',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Row(
                  children: const [
                    Text(
                      'View More',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisSpacing: 7,
                mainAxisSpacing: 10,
                childAspectRatio: .9,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width * .4,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {
                          Get.to(const HotelDetail());
                        },
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: 160,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=1320&height=746&fit=crop&format=pjpg&auto=webp',
                                    height: 160,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: Container(
                                      height: 33,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        'hoarding dgg',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          child: Text(
                                            'hoafdgdfg dgg',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width * .4,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {
                          Get.to(const HotelDetail());
                        },
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: 160,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=1320&height=746&fit=crop&format=pjpg&auto=webp',
                                    height: 160,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: Container(
                                      height: 33,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        'hoarding dgg',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          child: Text(
                                            'hoafdgdfg dgg',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width * .4,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {
                          Get.to(const HotelDetail());
                        },
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: 160,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=1320&height=746&fit=crop&format=pjpg&auto=webp',
                                    height: 160,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: Container(
                                      height: 33,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        'hoarding dgg',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          child: Text(
                                            'hoafdgdfg dgg',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width * .4,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {
                          Get.to(const HotelDetail());
                        },
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: 160,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=1320&height=746&fit=crop&format=pjpg&auto=webp',
                                    height: 160,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Positioned(
                                    top: 3,
                                    right: 3,
                                    child: Container(
                                      height: 33,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        'hoarding dgg',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          child: Text(
                                            'hoafdgdfg dgg',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.deepOrangeAccent,
                                              size: 15,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
