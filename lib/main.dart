import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecom/components/horizontal_list_view.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
  
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget image_carousel = new Container(
    height: 200,
    child: Carousel(
      boxFit:BoxFit.cover,
      images:[
        AssetImage("images/lieu/1.jpg"),
        AssetImage("images/lieu/2.jpg"),
        AssetImage("images/lieu/3.jpg"),
        AssetImage("images/lieu/4.jpg"),
        AssetImage("images/lieu/5.jpg"),
        AssetImage("images/lieu/6.jpg"),
        AssetImage("images/lieu/7.jpg"),
        AssetImage("images/lieu/8.jpg"),
        AssetImage("images/lieu/9.jpg"),
        AssetImage("images/lieu/10.jpg"),
        AssetImage("images/lieu/11.jpg"),
        AssetImage("images/lieu/12.jpg"),
      ],
      autoplay: true,
      animationDuration: Duration(milliseconds:1000),
      animationCurve: Curves.fastOutSlowIn,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        actions:<Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
        title: Text("Binam"),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child:ListView(
          children:<Widget>[
            UserAccountsDrawerHeader(accountName: Text("Zepe"), accountEmail: Text("vadel.tsague@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child:Icon(Icons.person),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink ,
            ),
            ),
            Divider(),
            // les boutons
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: IconButton(icon:Icon(Icons.group_work),onPressed:(){} ,color: Colors.lightGreen,),
                title: Text("Reunion"),
              ),
              
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: IconButton(icon:Icon(Icons.event),onPressed:(){} ,color: Colors.grey,),
                title: Text("Evenements"),
              ),
              
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading:IconButton(icon: Icon(Icons.announcement),onPressed: (){}, color: Colors.blueGrey),
                title: Text("Annonces",style:TextStyle(fontWeight: FontWeight.bold)),
              ),
            )
          ],
        )
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(padding: EdgeInsets.all(10.0),
          child: Text('Tontines'),),
          HorizontalListView(),
        ],
        
      ),
    );
  }
}

