import 'package:flutter/material.dart';
import 'package:my_cv_app/tools/var.dart';

class EditingPage extends StatefulWidget {
  const EditingPage({super.key});

  @override
  State<EditingPage> createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const Text(
                'Edit CV',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Start building your own personal CV...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Fields with * are required.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30,
                      ),
                      labelText: 'full_name *',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintText: 'Enter your fullname',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        fullname.value = value;
                      });
                    },
                    onTapOutside: (event) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please complete the field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      icon: Image.asset(
                        'images/slack.png',
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                      labelText: 'slack_username *',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintText: 'Enter your slack_username',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        slack.value = value;
                      });
                    },
                    onTapOutside: (event) =>
                        FocusScope.of(context).requestFocus(FocusNode()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please complete the field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      icon: Image.asset(
                        'images/github.png',
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                      labelText: 'github_handle *',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintText: 'Enter your github_handle',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        github.value = value;
                      });
                    },
                    onTapOutside: (event) =>
                        FocusScope.of(context).requestFocus(FocusNode()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please complete the field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      icon: Image.asset(
                        'images/bio.png',
                        width: 30,
                        fit: BoxFit.fill,
                      ),
                      labelText: 'personal bio *',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintText: 'Enter a brief personal bio',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(
                        () {
                          shortbio.value = value;
                        },
                      );
                    },
                    onTapOutside: (event) =>
                        FocusScope.of(context).requestFocus(FocusNode()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please complete the field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(15)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.drive_file_rename_outline_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.grey,
                          content: Text('Send in progress...'),
                        ),
                      );
                      FocusScope.of(context).requestFocus(FocusNode());
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
