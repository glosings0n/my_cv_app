import 'package:flutter/material.dart';
import 'package:my_cv_app/screen/edit.dart';
import 'package:my_cv_app/tools/var.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 50,
          ),
          child: Column(
            children: [
              const Text(
                'Personal CV',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'full_name :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: fullname,
                          builder: (context, value, _) {
                            return Text(
                              fullname.value,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 3,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'images/slack.png',
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'slack_username :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: slack,
                          builder: (context, value, _) {
                            return Text(
                              slack.value,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 3,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'images/github.png',
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'github_handle :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: github,
                          builder: (context, value, _) {
                            return Text(
                              github.value,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            'images/bio.png',
                            width: 30,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'personal bio :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                        right: 15,
                        bottom: 20,
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: shortbio,
                        builder: (context, value, _) {
                          return Text(
                            shortbio.value,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          elevation: 2,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EditingPage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(top: (10)),
            child: Column(
              children: [
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
