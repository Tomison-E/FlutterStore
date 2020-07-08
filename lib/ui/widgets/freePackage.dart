import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Package extends StatelessWidget {

  final String title;
  final String subTitle;
  final String label;
  final bool purchase;
  final int index;
  final bool price;
  final bool lastIndex;
  final String image;

  Package({this.title,this.subTitle,this.label,this.price=false,this.purchase=false,this.lastIndex=false,this.index,this.image}):assert(image!=null);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Image.asset(image,height: 60,width: 60),
            SizedBox(width: 10),
            Text("$index",style: TextStyle(color: Color.fromRGBO(223, 223, 223, 1.0),fontSize: 13,height: 1.5,fontWeight: FontWeight.w600)),
            SizedBox(width: 15),
            Expanded(child:RichText(text: TextSpan(text:"$title\n",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 14,height: 1.5),children: [
              TextSpan(text: subTitle,style: TextStyle(fontSize: 12,color: Color.fromRGBO(163, 163, 167, 1.0)))
            ],
            ))),
            SizedBox(width:price?100:65,
                child: Column(
                  children: [
                    SizedBox(height: 16.0),
                    SizedBox(height:20,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(239, 239, 243, 1.0),child: Text(label,style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize:price?11:12)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),)),
                    SizedBox(height: 5.0),
                    purchase?Text("In-App Purchases",style: TextStyle(color: Color.fromRGBO(140, 140, 142, 1.0),fontSize: 7)):Text(" ",style: TextStyle(color: Colors.grey[500],fontSize: 7))
                  ],
                ))
          ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        ),
        SizedBox(height: 15.0),
        lastIndex?Text(""):Row(
          children: [
            SizedBox(width: 63),
            Expanded(child:Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2))
          ],
        )
      ],
    );
  }





}