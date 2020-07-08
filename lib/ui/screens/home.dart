import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store/core/models/drawerData.dart';
import 'package:flutter_store/ui/screens/discover.dart';
import 'package:flutter_store/ui/widgets/drawer.dart';
import 'package:flutter_store/utils/sizeConfig.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
   return _Home();
  }

}


 class _Home extends State<Home>{
 final drawerValues = [
   DrawerData(icon: "assets/systemIcons/SystemIconA.png",title: "Discover",selected: true,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconB.png",title: "Arcade",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconC.png",title: "Create",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconD.png",title: "Work",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconE.png",title: "Play",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconF.png",title: "Develop",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconG.png",title: "Categories",selected: false,count: 0),
   DrawerData(icon: "assets/systemIcons/SystemIconH.png",title: "Updates",selected: false,count: 6),
 ];
 final name = "Oluwatomisin Esan";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
   return Scaffold(
     body: ConstrainedBox(
       constraints: BoxConstraints(minHeight: 600.0,minWidth: 1000,maxHeight: double.infinity),
       child: Row(
         children: [
           Container(
             width: 220.0,
             color: Color.fromRGBO(62, 63, 66, 1.0),
             child: Column(
               children: [
                 SizedBox(height: 40.0),
                SizedBox(child:Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),child: TextField(
                   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0),borderSide: BorderSide(color: Color.fromRGBO(138, 140, 142, 1.0))),hintText: "Search",hintStyle:TextStyle(color: Color.fromRGBO(136, 138, 140, 1.0),fontSize: 13,fontWeight: FontWeight.normal),prefixIcon: Icon(Icons.search,color: Color.fromRGBO(165, 167, 169, 1.0),size: 20),fillColor: Color.fromRGBO(105, 107, 109, 1.0),filled: true,focusColor: Colors.grey,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0),borderSide: BorderSide(color: Color.fromRGBO(138, 140, 142, 1.0))))
                 )),height: 35.0),
                 SizedBox(height: 20.0),
                ListView(
                  children: drawerValues.map((e) => CustomDrawer(icon: e.icon,title: e.title,selected: e.selected,count: e.count,action: (){
                    drawerValues.forEach((element) {element.selected = false;});
                    setState(() {
                      e.selected = true;
                    });
                  },)).toList(),shrinkWrap: true,
                ),
                 Expanded(
                   child: Align(alignment: Alignment.bottomCenter,child: Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),child: Row(
                     children: [
                       CircleAvatar(backgroundColor: Colors.grey,backgroundImage: AssetImage("assets/user.png")),SizedBox(width: 15.0),Text("$name",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold))
                     ],
                   ),),)
                 ),
                 SizedBox(height: 20.0),
         ]),
           ),
           Container(color: Colors.black,width: 1.0),
           Expanded(child: Container(
             color: Color.fromRGBO(48, 49, 52, 1.0),
             padding: EdgeInsets.only(left: 35.0,right: 35.0),
             child: Discover(),
             alignment: Alignment.topCenter,
           ))
         ],
       ),
     ),
     backgroundColor: Colors.transparent,
   );
  }






}

