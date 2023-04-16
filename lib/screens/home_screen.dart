import 'package:edified/screens/e_books.dart';
import 'package:edified/screens/online_courses.dart';
import 'package:edified/screens/register_screen/study_material.dart';
import 'package:edified/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:edified/screens/empty_screen.dart';

import 'Quiz/quiz_main.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(''),
      ),
      drawer: MyDrawer(),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Hello, User!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Oswald',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF303030),
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
              ),
              onChanged: (text) {
                setState(() {
                  _searchText = text;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/javascript.png'),
                          ),
                          Text(
                            'JavaScript',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmptyScreen.id);
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/python.png'),
                            ),
                            Text(
                              'Python',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Oswald'),
                            ),
                          ],
                        ),
                        height: 300,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/c++.png'),
                          ),
                          Text(
                            'C++',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/flutter.png'),
                          ),
                          Text(
                            'Flutter',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "  Recent Lessons",
                  style: TextStyle(color: Colors.white70, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'JavaScript',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontFamily: 'Oswald'),
                    ),
                  ),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF303030),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Python',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontFamily: 'Oswald'),
                    ),
                  ),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF303030),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Flutter',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontFamily: 'Oswald'),
                    ),
                  ),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF303030),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.white70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF285430),
                Color(0xFF285430),
              ],
            )),
            child: Expanded(
              child: Image(
                image: AssetImage('images/lastlogo.png'),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Online Courses',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pushNamed(context, OnlineCourses.id);
            },
          ),
          ListTile(
            title: const Text('e-books',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pushNamed(context, Ebooks.id);
            },
          ),
          ListTile(
            title: const Text('Study Materials',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pushNamed(context, StudyMaterial.id);
            },
          ),
          ListTile(
            title: const Text('Quiz',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pushNamed(context, Quizpage.id);
            },
          ),
          ListTile(
            title: const Text('Sign out',style: TextStyle(fontSize: 22),),
            onTap: () {
              Navigator.pushNamed(context, WelcomeScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
