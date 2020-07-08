import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetPackage extends StatelessWidget {

  final String title;
  final String subTitle;
  final String label;
  final bool purchase;
  final bool price;
  final bool lastIndex;
  final String image;

  GetPackage({this.title,this.subTitle,this.label,this.purchase=false,this.price=false,this.lastIndex=false,this.image}):assert(image!=null);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Image.asset(image,height: 50),
            SizedBox(width: 10),
            Expanded(child:RichText(text: TextSpan(text:"$title\n",style: TextStyle(color: Color.fromRGBO(219, 219, 220, 1.0),fontSize: 15,height: 1.5),children: [
              TextSpan(text: subTitle,style: TextStyle(fontSize: 13,color: Color.fromRGBO(163, 163, 167, 1.0)))
            ],
            ))),
            SizedBox(width: price?85:65,
                child: Column(
                  children: [
                    SizedBox(height: 16.0),
                    SizedBox(height:20,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(244, 244, 248, 1.0),child: Text(label,style: TextStyle(color: Color.fromRGBO(70, 143, 247, 1.0),fontSize:price?11:12)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),)),
                    SizedBox(height: 5.0),
                    purchase?Text("In-App Purchases",style: TextStyle(color: Color.fromRGBO(140, 140, 142, 1.0),fontSize: 7)):Text(" ",style: TextStyle(color: Colors.grey[500],fontSize: 7))
                  ],
                ))
          ],mainAxisAlignment: MainAxisAlignment.start,
        ),
        SizedBox(height: 15.0),
        lastIndex?Text(""):Row(
          children: [
            SizedBox(width: 63),
            Expanded(child:Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),)
          ],
        )
      ],
    );
  }





}