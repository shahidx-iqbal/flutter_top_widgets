import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> friendsNames = [
    "fahad",
    "shahid",
    "usman",
    "wahid",
    "samad",
    "khan",
    "uzair",
    "usma"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Top Wigets'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  Expanded(child: Center(child: Text('Flutter',style: TextStyle(
                    fontSize: 25
                  ),))),
                  Icon(Icons.person)
                ],
              ),
              Container(
                height: 200,
                color: Colors.lightBlue,
              ),
             Expanded(
               child: ListView.builder(
                   itemCount: 20,
                   itemBuilder: (context,int index){
                   return ListTile(
                       title: Text('index is $index'));
               }),
             ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context,int index){
                      return ListTile(
                          title: Text('index is $index',style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                          ),));
                    }),
              )
            ],
          ),
        ));
  }
}
