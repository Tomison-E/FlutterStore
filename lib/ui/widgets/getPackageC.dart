import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetPackageC extends StatelessWidget {

  final String title;
  final String subTitle;
  final String header;
  final String label;
  final bool purchase;
  final bool price;
  final bool lastIndex;
  final String image;

  GetPackageC({this.title,this.subTitle,this.header,this.label,this.purchase=false,this.price=false,this.lastIndex=false,this.image}):assert(image!=null);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Image.asset(image,height: 90,width: 90),
            SizedBox(width: 15),
            Expanded(child:Column(
              children: [
                RichText(text: TextSpan(text:"$header\n",style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 12,height: 1.1,fontWeight: FontWeight.w500),children: [
                TextSpan(text:"$title\n",style: TextStyle(color: Color.fromRGBO(219, 219, 220, 1.0),fontSize: 14,height: 1.3,fontWeight: FontWeight.w400)),
                  TextSpan(text: subTitle,style: TextStyle(fontSize: 12,color: Color.fromRGBO(150, 151, 152, 1.0),height: 1.6))
                ],
                )),
                SizedBox(height: 7),
                SizedBox(height:20,child:RaisedButton(onPressed: (){},color: Color.fromRGBO(227, 227, 230, 1.0),child: Text(label,style: TextStyle(color: Color.fromRGBO(70, 144, 248, 1.0),fontSize:price?11:11,fontWeight: FontWeight.bold)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),)),
                SizedBox(height: 25),
                lastIndex?Text(""):Row(
                  children: [
                    Expanded(child:Container(color: Color.fromRGBO(68, 69, 72, 1.0),height: 1.2))
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