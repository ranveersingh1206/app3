import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  int clicked = 0;
  bool haserror = false;

  void onButtonClick() {
    final String password = passwordController.text;

    setState(() {
      if (password.length <= 6) {
        haserror = true;
      } else {
        haserror = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Auth"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey,
            ),
            child: Image.asset(
              "assets/logo.jpeg",
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: const InputDecoration(hintText: ("Name:")),
              controller: nameController,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration:
                  const InputDecoration(hintText: ("Enter Your Password:")),
              controller: passwordController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          haserror ? Text("invalid") : SizedBox(),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: onButtonClick,
            child: Container(
              height: (50),
              width: (300),
              decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Center(child: Text("Click Here")),
            ),
          ),
          Text(clicked.toString()),
        ],
      ),
    );
  }
}
