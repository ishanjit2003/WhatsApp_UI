import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Tab(
                    child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                )),
                Tab(
                    child: Text(
                  "Chats",
                  style: TextStyle(color: Colors.white),
                )),
                Tab(
                    child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                )),
                Tab(
                    child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
            actions: [
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: '1', child: Text("New Group")),
                        PopupMenuItem(value: '2', child: Text("Settings")),
                        PopupMenuItem(value: '3', child: Text("Logout")),
                      ])
            ],
          ),
          body: TabBarView(children: [
            Text("Camera"),
            ListView.builder(
                itemCount: 100,

                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/7010477/pexels-photo-7010477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("ishanjit"),
                    subtitle: Text("sup dude"),
                    trailing: Text('3:59 pm'),
                  );
                }),
            //Text("Chats"),

            ListView.builder(
                itemCount: 100,

                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 2
                        )
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/7010477/pexels-photo-7010477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                    title: Text("ishanjit"),
                    subtitle: Text("7:59 pm "),

                  );
                }),
            ListView.builder(
                itemCount: 100,

                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/7010477/pexels-photo-7010477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("ishanjit"),
                    subtitle: Text(index/2==0?"Today 7:59 pm ":"you have missed tha call"),
                    trailing: Icon(index/2==0?Icons.call:Icons.video_call),
                  );
                }),
          ]),
        ));
  }
}
