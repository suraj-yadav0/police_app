import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Police App",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_sharp),
          ),
        ],
      ),
      body: Column(children: [
        Container(
          padding:
              const EdgeInsets.only(top: 85, left: 15, right: 15, bottom: 15),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Hi, Suraj",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white70, width: 2),
                    ),
                    child: const CircleAvatar(backgroundImage: AssetImage("assets/profile.jpg"),radius: 30,),
                  )
                ],
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
