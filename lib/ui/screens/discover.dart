import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store/ui/widgets/features.dart';
import 'package:flutter_store/ui/widgets/freePackage.dart';
import 'package:flutter_store/ui/widgets/getPackage.dart';
import 'package:flutter_store/ui/widgets/getPackageB.dart';
import 'package:flutter_store/ui/widgets/getPackageC.dart';
import 'package:flutter_store/utils/sizeConfig.dart';

class Discover extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Discover();
  }


}


class _Discover extends State<Discover>{
  ScrollController _scrollController;
  ScrollController _scrollControllerB;

  @override
  void initState() {
    _scrollControllerB = ScrollController()..addListener(() {
      if(_scrollControllerB.position.maxScrollExtent - _scrollControllerB.position.pixels < 760) {
        if (_scrollController.position.pixels <
            _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: Duration(seconds: 120), curve: Curves.linear);
        }
        else if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
              _scrollController.position.minScrollExtent,
              duration: Duration(seconds: 120), curve: Curves.linear);
        }
      }
    });
    _scrollController = ScrollController(initialScrollOffset: 100.0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // print(SizeConfig.blockSizeVertical*100);
    return SingleChildScrollView(
      child: Column(
        children: [
        Container(
          decoration: BoxDecoration(color: Color.fromRGBO(29, 29, 29, 1.0),borderRadius: BorderRadius.circular(6.0)),
          child: Row(
          children: [
            Flexible(flex: 4,child: Column(
              children: [
               Text("FLUTTER DAY 2020",style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1.0),fontSize:10,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                SizedBox(height: 20.0),
                Text("Join us for Flutter Day",style: TextStyle(color: Colors.white,fontSize: 21),textAlign: TextAlign.left),
                SizedBox(height: 20.0),
                Text("We're bringing Flutter's Developers Conference to you",style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1.0),fontSize:14),textAlign: TextAlign.left)
              ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            ),fit: FlexFit.loose,),
            Flexible(flex: 6,child: Image.asset("assets/interact.png",fit: BoxFit.fitWidth,))
        ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          ),padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0,bottom: 30.0),
          height: SizeConfig.blockSizeVertical*65 > 400? 400 :  SizeConfig.blockSizeVertical*65,
        ),
          SizedBox(height: 20.0),
        SizedBox(child:Row(children: [
          Expanded(child: Container(decoration: BoxDecoration(color: Color.fromRGBO(68, 69, 72, 1.0),borderRadius: BorderRadius.circular(10.0)),child: Row(
            children: [
              Flexible(flex: 5,child: Column(
                children: [
                  Text("GET STARTED",style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1.0),fontSize:11,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  SizedBox(height: 5.0),
                  Text("Getting through this together",style: TextStyle(color: Color.fromRGBO(227, 227, 227, 1.0),fontSize: 22),textAlign: TextAlign.left),
                  SizedBox(height: 15.0),
                  Text("How Houseparty, Adobe and Meeter responded to the pandemic",style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1.0),fontSize:13),textAlign: TextAlign.left)
                ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              ),fit: FlexFit.loose,),
              SizedBox(width: 10.0),
              Flexible(flex:6,child: Center(child:CircleAvatar(backgroundColor: Colors.grey,minRadius: 100,maxRadius:100,backgroundImage: AssetImage("assets/bgImages/imageJ1.png"),)))
            ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          ),padding: EdgeInsets.all(20.0),)),
          SizedBox(width: 20.0),
          Expanded(child: Container(decoration: BoxDecoration(color: Color.fromRGBO(68, 69, 72, 1.0),borderRadius: BorderRadius.circular(10.0)),child: Row(
            children: [
              Flexible(flex: 5,child: Column(
                children: [
                  Text("GET STARTED",style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1.0),fontSize:11,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  SizedBox(height: 5.0),
                  Text("Essential Coding",style: TextStyle(color: Color.fromRGBO(227, 227, 227, 1.0),fontSize: 22),textAlign: TextAlign.left),
                  SizedBox(height: 15.0),
                  Text("The packages you need to fast track development",style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1.0),fontSize:13),textAlign: TextAlign.left)
                ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              ),fit: FlexFit.loose,),
              SizedBox(width: 10.0),
              Flexible(flex: 6,child: Center(child:CircleAvatar(backgroundColor: Colors.grey,radius: 100,backgroundImage: AssetImage("assets/bgImages/imageG1.png"),)))
            ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          ),padding: EdgeInsets.all(20.0),)),
        ],),height: 230.0,),
          SizedBox(height: 30.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
    children:[
      Text("Apps and Games We Love Right Now",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
      FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
          ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(children: [
            Expanded(
              child: Column(
                children: [
                GetPackage(title: "Orbit: Time Tracking", subTitle: "Track Time & Get Invoices",label: "GET",purchase: true,image: "assets/icons/iconA4.png"),
                GetPackage(title: "Entity Pro", subTitle: "Unicode & Emoji Finder",label: "GET",purchase: true,image: "assets/icons/iconB4.png"),
                GetPackage(title: "Boop", subTitle: "Developer Tools",label: "GET",purchase: false,lastIndex: true,image: "assets/icons/iconC3.png")
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child:  Column(
                children: [
                  GetPackage(title: "Tayasui Sketches", subTitle: "Amazing Drawing Tools",label: "₦ 2,500.00",price: true,image: "assets/icons/iconD4.png"),
                  GetPackage(title: "LiquidText", subTitle: "Annotate and review documents",label: "₦ 2,200.00",price: true,image: "assets/icons/iconE4.png"),
                  GetPackage(title: "The levelator", subTitle: "Automatically adjust audio",label: "₦ 2,300.00",price: true,lastIndex: true,image: "assets/icons/iconF4.png")
                ],
              ),
            ),
            SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
            SizeConfig.blockSizeHorizontal*100 > 1228 ? Expanded(
              child:  Column(
                children: [
                  GetPackage(title: "World of Tanks Blitz MMO", subTitle: "Action 3d War Machine Shooter",label: "₦ 2,500.00",price: true,image: "assets/icons/iconG4.png"),
                  GetPackage(title: "SketchFighter 4000 Alpha", subTitle: "Retro Exploration Shooter",label: "₦ 2,200.00",price: true,image: "assets/icons/iconH4.png"),
                  GetPackage(title: "Codye", subTitle: "Present your code",label: "₦ 2,300.00",price: true,lastIndex: true,image: "assets/icons/iconI4.png")
                ],
              ),
            ):  Text("")
          ],),
          SizedBox(height: 20.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Essential Apps For Developers",style: TextStyle(color:Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
         Row(children: [
            Expanded(
              child: Column(
                children: [
                  GetPackageB(title: "Apple Developer", subTitle: "Reference",label: "GET",purchase: true,image: "assets/icons/iconJ3.png"),
                  GetPackageB(title: "BBEdit", subTitle: "Legendary text & code editor",label: "GET",purchase: true,lastIndex: true,image: "assets/icons/iconK3.png"),
                   ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child:  Column(
                children: [
                  GetPackageB(title: "xScope4", subTitle: "Measure, inspect & test",label: "₦ 17,500.00",price: true,image: "assets/icons/iconL3.png"),
                  GetPackageB(title: "SubEthaEdit", subTitle: "Code, Write, Edit. Together",label: "₦ 2,200.00",price: true,lastIndex: true,image: "assets/icons/iconM3.png"),
                      ],
              ),
            ),
            SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
            SizeConfig.blockSizeHorizontal*100 > 1228 ?  Expanded(
    child: Column(
    children: [
    GetPackageB(title: "SnippetsLab", subTitle: "Your personal code library",label: "GET",purchase: true,image: "assets/icons/iconN3.png"),
    GetPackageB(title: "Kaleidoscope", subTitle: "Spot and merge differences",label: "GET",purchase: true,lastIndex: true,image: "assets/icons/iconO3.png"),
    ],
    ),
    ):  Text("")
          ],),
          SizedBox(height: 20.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Your At-Home ToolKit",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(
              children: [
                Expanded(child: Features(image: "assets/bgImages/imageA1.png",title: "Give yourself a break",subTitle: "Time Out reminds you to take a computing breather",header: "FEATURED APP",)),
                SizedBox(width: 15),
                Expanded(child: Features(image: "assets/bgImages/imageE1.png",title: "Never lose a recipe with Paprika",subTitle: "This handy recipe manager really gets you cooking",header: "FEATURED APP",)),
                SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
                SizeConfig.blockSizeHorizontal*100 > 1228 ?  Expanded(child: Features(image: "assets/bgImages/imageF1.png",title: "Track all your packages",subTitle: "Keep tabs on a multitude of shipments with deliveries.",header: "FEATURED APP",)) :Text("")
              ],
            ),
          SizedBox(height: 60.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Top Apple Arcade Games",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),

           Row(
              children: [
                Expanded(child: Column(
              children: [
                  GetPackageC(header: "Apple Arcade",title: "Sneaky Sasquatch",subTitle: "Stealthy shenanigians",label: "START PLAYING",image: "assets/icons/iconA3.png"),
                  GetPackageC(header: "Apple Arcade",title: "SpongeBob: Patty Pursuit",subTitle: "Save the Krabby Patty Formula",label: "START PLAYING",lastIndex: true,image: "assets/icons/iconB3.png"),
    ])
              ),SizedBox(width: 15),
                Expanded(child: Column(
                    children: [
                      GetPackageC(header: "Apple Arcade",title: "PAC-MAN Party Royale",subTitle: "Classic Multiplayer Battle",label: "START PLAYING",image: "assets/icons/iconC3.png"),
                      GetPackageC(header: "Apple Arcade",title: "Sonic Racing",subTitle: "Super Speed Racing",label: "START PLAYING",lastIndex: true,image: "assets/icons/iconD3.png"),
                    ])
                ),
                SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
                SizeConfig.blockSizeHorizontal*100 > 1228 ? Expanded(child: Column(
                    children: [
                      GetPackageC(header: "Apple Arcade",title: "Little Orpheus",subTitle: "Comrades! To The Centre!",label: "START PLAYING",image: "assets/icons/iconE3.png"),
                      GetPackageC(header: "Apple Arcade",title: "Hot Lava",subTitle: "The floor is lava",label: "START PLAYING",lastIndex: true,image: "assets/icons/iconF3.png"),
                    ])
                ):  Text("")
              ],
          ),
          SizedBox(height: 20.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Work Smarter",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(
            children: [
              Expanded(child: Features(image: "assets/bgImages/imageB1.png",title: "Focus and de-stress",subTitle: "Take care of your mind and body.",header: "FEATURED APP",)),
              SizedBox(width: 15),
              Expanded(child: Features(image: "assets/bgImages/imageI1.png",title: "Your work-from-home toolkit",subTitle: "Tackle remote work with apps.",header: "LIFE AT HOME",)),
              SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
              SizeConfig.blockSizeHorizontal*100 > 1228 ?  Expanded(child: Features(image: "assets/bgImages/imageH1.png",title: "Esential apps for freelancers",subTitle: "Stay focused and manage your work with these apps",header: "GET PRODUCTIVE",)) :Text("")
            ],
          ),
          SizedBox(height: 60.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Top Free Apps and Games",style: TextStyle(color:  Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(
            children: [
              Expanded(child: Column(
                children: [
                  Package(title: "JustJoin for Zoom Meetings",subTitle: "Productivity",label: "GET",index: 1,image: "assets/icons/iconA2.png"),
                  Package(title: "Microsoft Word",subTitle: "Create, Edit & Share Documents",label: "GET",index: 2,image: "assets/icons/iconB2.png"),
                  Package(title: "Microsoft PowerPoint",subTitle: "Create Impactful Presentations",label: "UPDATE",index: 3,lastIndex: true,image: "assets/icons/iconC2.png"),
                ],
              )),
              SizedBox(width: 15),
              Expanded(child: Column(
                children: [
                  Package(title: "Microsoft Excel",subTitle: "Spreadsheets and Data Analysis",label: "GET",index: 4,purchase: true,image: "assets/icons/iconD2.png"),
                  Package(title: "GarageBand",subTitle: "A recording studio on your Mac",label: "UPDATE",index: 5,purchase: true,image: "assets/icons/iconE2.png"),
                  Package(title: "Microsft Remote Desktop",subTitle: "Work from anywhere",label: "GET",index: 6,lastIndex: true,purchase: true,image: "assets/icons/iconF2.png"),
                ],
              )),
              SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
              SizeConfig.blockSizeHorizontal*100 > 1228 ?   Expanded(child: Column(
                children: [
                  Package(title: "Microsoft 365",subTitle: "Productivity",label: "GET",index: 1,image: "assets/icons/iconG2.png"),
                  Package(title: "Keynote",subTitle: "Build stunning presentations",label: "GET",index: 2,image: "assets/icons/iconH2.png"),
                  Package(title: "Numbers",subTitle: "Create impressive spreadsheet",label: "GET",index: 3,lastIndex: true,image: "assets/icons/iconI2.png"),
                ],
              )):Text("")

            ],
          ),
          SizedBox(height: 20.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Be Creative",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(
            children: [
              Expanded(child: Features(image: "assets/digitalB.png",title: "Journaling made easy",subTitle: "Create a rich digital diary with Day One.",header: "FEATURED APP",)),
              SizedBox(width: 15),
              Expanded(child: Features(image: "assets/digitalC.png",title: "Print and publish your photos",subTitle: "Turn your pics into calendars, books, framed art and more.",header: "GET STARTED",)),
              SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
              SizeConfig.blockSizeHorizontal*100 > 1228 ?  Expanded(child: Features(image: "assets/digitalA.png",title: "GIFs made easy",subTitle: "Get animated with these apps",header: "OUR FAVOURITES",)) :Text("")
            ],
          ),
          SizedBox(height: 60.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Top Paid Apps and Games",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
                FlatButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 14),textAlign: TextAlign.justify))
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          Row(
            children: [
              Expanded(child: Column(
                children: [
                  Package(title: "Total Video Tools ",subTitle: "Screen Recorder & Movie Editor",label: "₦ 2,200.00",index: 1,price: true,image: "assets/icons/iconA1.png"),
                  Package(title: "PocketCAS",subTitle: "Math Problem Solver",label: "₦ 1,200.00",index: 2,price: true,image: "assets/icons/iconB1.png"),
                  Package(title: "Mail Tab Pro for Yahoo",subTitle: "Productivity",label: "₦ 3,300.00",index: 3,lastIndex: true,price: true,image: "assets/icons/iconC1.png"),
                ],
              )),
              SizedBox(width: 15),
              Expanded(child: Column(
                children: [
                  Package(title: "Logic Pro X",subTitle: "Professional music production",label: "₦ 3,300.00",index: 4,price: true,image: "assets/icons/iconD1.png"),
                  Package(title: "OpenWith - Browser, Mail Client",subTitle: "Utilities",label: "₦ 1,200.00",index: 5,price: true,image: "assets/icons/iconE1.png"),
                  Package(title: "MainStage 3",subTitle: "Live rig for musicians",label: "₦ 2,200.00",index: 6,lastIndex: true,price: true,image: "assets/icons/iconF1.png"),
                ],
              )),
              SizeConfig.blockSizeHorizontal*100 > 1228 ? SizedBox(width: 15) : Text(""),
              SizeConfig.blockSizeHorizontal*100 > 1228 ?   Expanded(child: Column(
                children: [
                  Package(title: "PhotoStack for Instagram",subTitle: "Social Networking",label: "₦ 22,750.00",index: 1,price: true,image: "assets/icons/iconG1.png"),
                  Package(title: "JavaPoint",subTitle: "Developer Tools",label: "₦ 1,200.00",index: 2,price: true,image: "assets/icons/iconH1.png"),
                  Package(title: "GroovyPoint",subTitle: "Developer Tools",label: "₦ 2,200.00",index: 3,lastIndex: true,price: true,image: "assets/icons/iconI1.png"),
                ],
              )):Text("")

            ],
          ),
          SizedBox(height: 60.0),
          GestureDetector(child:Container(
            height: 350,
            decoration: BoxDecoration(color: Color.fromRGBO(68, 69, 71, 1.0),borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Expanded(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child:
                  Column(
                    children: [
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev01.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev02.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev03.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev04.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev05.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev06.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev07.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev08.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev09.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev10.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev11.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev12.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev13.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev14.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev15.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev16.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev17.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev18.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev19.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev20.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev21.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev22.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev23.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev24.JPG")),
                          SizedBox(width: 20),
                        ],mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 180),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev23.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev22.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev21.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev20.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev19.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev18.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev17.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev16.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev15.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev14.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev13.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev12.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev11.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev10.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/user.png")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev09.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev08.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev07.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev06.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev05.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev04.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev03.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev02.JPG")),
                          SizedBox(width: 20),
                          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/community/Dev01.JPG")),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),controller: _scrollController,reverse: false,)),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Image.asset("assets/logo.png",height: 25,),
                    Text("Flutter Community",style: TextStyle(color: Color.fromRGBO(2020, 2020, 203, 1.0)),)
                  ],mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(height: 20.0),
            SizedBox(width:300,height:45,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(255, 255, 255, 1.0),child: Text("See All Devs",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize:12)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                SizedBox(height: 40.0),
              ],crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),),
          SizedBox(height: 60.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 5.0),
          Row(
              children:[
                Text("Quick Links",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 20,fontWeight: FontWeight.w500)),
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Learn More About In-App Purchases\n",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 15)),
                    Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
    ],crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                    children: [
                      Text("Parents' Guide to Mac App Store\n",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 15)),
                      Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
                    ],crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text("Welcome to Mac App Store",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 15)),
          SizedBox(height: 70),
          Row(
            children: [
              Expanded(
                child: Row(
                    children: [
                      Expanded(child: Text("")),
                      SizedBox(width:300,height:35,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(66, 67, 70, 1.0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child: Text("Redeem",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 13,fontWeight: FontWeight.bold)),))
                    ]
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Row(
                    children: [
    SizedBox(width:300,height:35,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(66, 67, 70, 1.0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child: Text("Add Funds To Apple ID",style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize: 13,fontWeight: FontWeight.bold)),)),
                      Expanded(child: Text("")),
                    ]
                ),
              )
            ],
          ),
          SizedBox(height: 50.0),
          Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),
          SizedBox(height: 10.0),
          Row(
              children:[
                Text("Terms & Conditions",style: TextStyle(color: Color.fromRGBO(163, 163, 167, 1.0),fontSize: 15,fontWeight: FontWeight.normal)),
                SizedBox(width: 10.0),
                Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(162, 162, 163, 1.0),size: 12)
              ],mainAxisAlignment: MainAxisAlignment.start),
          SizedBox(height: 60.0),
        ],mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
      ),controller: _scrollControllerB,
    );
  }

  
}