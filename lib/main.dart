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
    var arrName=['Alexa','Sahil','Tanuj','Vaishnavi','Tanu','Manish','Rohit','Mohit','Rakesh','Aman','Karan',"Abhinav",'Anubhav'];
    var arrImage=["assets/𝐀𝐕𝐀𝐓𝐀𝐑 𝐂𝐎𝐔𝐏𝐋𝐄𝐒 (1).jpeg","assets/🛸꧁ ƑօƖƖօⱳ ɱҽ ƒօɾ ɱօɾҽ ƥíƈƭʋɾҽʂ ࿐🧸.jpeg",'assets/download (12).jpeg'
    ,"assets/download (13).jpeg",'assets/couple (1).jpeg','assets/download (6).jpeg','assets/download (7).jpeg',"assets/download (15).jpeg",
    "assets/download (14).jpeg","assets/download (9).jpeg","assets/download (11).jpeg","assets/download (8).jpeg",
    "assets/download (6).jpeg","assets/cute ghost (1).jpeg"];
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
            IconButton(onPressed: (){}, icon: Image.asset("assets/Group 481688.png",height: 20,)),
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Image.asset("assets/audience_1040005 1.png", height: 30,)
            ),
            Tab(child:
              Text("Home",style: TextStyle(
                fontWeight: FontWeight.bold,

              ),),
            ),Tab(child:
               Text("Status",style: TextStyle(
                 fontWeight: FontWeight.bold,

                ),)
              ),
            Tab(child: Text("Call",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            ),
          ]),
          backgroundColor: HexColor("1F2C34"),
        ),

        body: Row(
          children: [SizedBox(
            height: 500,
          ),
            Container( height: 1000,width: 360,
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading:CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(arrImage[index]),
                  ) ,
                  title: Text(arrName[index],style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text("Hello how are yoou",style:
                  TextStyle(
                    fontSize: 13,
                  ),),
                  trailing: Text("12:45",
                    style:
                    TextStyle(
                      fontWeight:FontWeight.w100,
                      fontSize: 10,
                    )
                    ,),
                );
              },itemCount: arrName.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
