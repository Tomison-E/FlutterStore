import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetPackageB extends StatelessWidget {

  final String title;
  final String subTitle;
  final String label;
  final bool purchase;
  final bool price;
  final bool lastIndex;
  final String image;
  GetPackageB({this.title,this.subTitle,this.label,this.purchase=false,this.price=false,this.lastIndex=false,this.image}):assert(image!=null);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Image.asset(image,height: 100,width: 100),
            SizedBox(width: 25),
            Expanded(child:Column(
              children: [
                RichText(text: TextSpan(text:"$title\n",style: TextStyle(color: Color.fromRGBO(233, 233, 244, 1.0),fontSize: 15,height: 1.5),children: [
                  TextSpan(text: subTitle,style: TextStyle(fontSize: 13,color: Color.fromRGBO(162, 162, 163, 1.0)))
                ],
                )),
                SizedBox(height: 18),
                Row(
                  children: [
                    SizedBox(height:20,width:price?85:65,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(244, 244, 248, 1.0),child: Text(label,style: TextStyle(color: Color.fromRGBO(77, 148, 248, 1.0),fontSize:price?11:12)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),)),
                    purchase?Text("    In-App\n    Purchases",style: TextStyle(color: Color.fromRGBO(140, 140, 142, 1.0),fontSize: 7)):Text(" ",style: TextStyle(color: Colors.grey[500],fontSize: 7))
                  ],mainAxisAlignment: MainAxisAlignment.start,
                ),
                SizedBox(height: 25),
                lastIndex?Text(""):Row(
                  children: [
                    Expanded(child:Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2),)
                  ],
                )
              ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
            )),
          ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }





}