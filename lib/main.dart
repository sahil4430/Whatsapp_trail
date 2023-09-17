import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0xFF1F2C34),
      ),
      home: home(),
    );

  }
}
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: HexColor("121B22"),
        appBar: AppBar(title: Title(
            color:Colors.white, child: Text("Whatsapp😁",style: TextStyle(
          color:HexColor("87949D") ,
          fontWeight: FontWeight.bold,
        ),)),
          actions: [IconButton(onPressed: ( ){}, icon:Icon(Icons.camera_alt_outlined,
            color:HexColor("87949D"),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp,
            color: HexColor("87949D"),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,
              color: HexColor("87949D"),)),
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Image.network("https://cdn-icons-png.flaticon.com/512/3633/3633274.png ")
            ),
            Tab(
              text: "Home",
            ),Tab(text: "Status",
              ),
            Tab(text: 'Call',
            ),
          ]),
          backgroundColor: HexColor("1F2C34"),
        ),
      ),
    );
  }
}
