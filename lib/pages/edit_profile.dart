import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isChecked = false;
  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_rounded,
              size: 130,
              color: Colors.deepOrangeAccent,
            ),
            const Text('Travel Rabbit'),
            const Text(
              'Travel Rabbit',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('search clicked');
                    }
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'E mail',
                /* suffix: IconButton(
                        onPressed: () {
                          print('search clicked');
                        },
                        icon: const Icon(Icons.search),
                      )*/
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('search clicked');
                    }
                  },
                  icon: const Icon(Icons.remove_red_eye_rounded),
                ),
                prefixIcon: IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('search clicked');
                    }
                  },
                  icon: const Icon(
                    Icons.key,
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'Password',
                /* suffix: IconButton(
                        onPressed: () {
                          print('search clicked');
                        },
                        icon: const Icon(Icons.search),
                      )*/
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: checkBoxCallBack,
                    ), //Che
                    const Text(
                      'Remind me',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const BookNow());
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.fingerprint,
                  color: Colors.orange,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text('Sign in with Finger Print'),
              ],
            ),
            const SizedBox(height: 40),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an Account ? ",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.orange,
                        fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
