import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store/utils/sizeConfig.dart';

class Features extends StatelessWidget{
  final String image;
  final String header;
  final String title;
  final String subTitle;

  Features({this.title,this.subTitle,this.image,this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
       Container(
         height: SizeConfig.blockSizeHorizontal*100 > 1228 ? 200: 250,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)),
       ),
        SizedBox(height: 12),
        Text(header,style: TextStyle(color: Color.fromRGBO(162, 162, 163, 1.0),fontSize:11,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
        SizedBox(height: 10.0),
        Text(title,style: TextStyle(color: Color.fromRGBO(223, 223, 224, 1.0),fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.left),
        SizedBox(height: 10.0),
        Text(subTitle,style: TextStyle(color: Color.fromRGBO(162, 162, 163, 1.0),fontSize:12,fontWeight: FontWeight.w500),textAlign: TextAlign.left)
      ],crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}