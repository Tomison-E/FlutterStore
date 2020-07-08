import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget{
final String icon;
final String title;
final int count;
final bool selected;
final action;

CustomDrawer({this.icon,this.title,this.selected,this.count,this.action}):assert(icon!=null);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:Container(color: selected? Color.fromRGBO(97, 98, 100, 1.0):Colors.transparent,height: 45,child:
    Row(
      children: [
        Image.asset(icon,height: 35,width: 35),SizedBox(width: 15.0),Expanded(child:Text(title,style: TextStyle(color:Color.fromRGBO(232, 232, 232, 1.0),fontSize: 18))),count>0?SizedBox(width: 28.0,child: Container(width: 20.0,height: 17,child: Text("$count",style: TextStyle(color: Color.fromRGBO(129, 130, 133, 1.0),fontWeight: FontWeight.bold),textAlign: TextAlign.center),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Color.fromRGBO(200, 201, 204, 1.0)))): SizedBox(width: 5)
      ],
    ),padding: EdgeInsets.only(left: 10.0,right: 10.0)),onTap:action);
  }




}