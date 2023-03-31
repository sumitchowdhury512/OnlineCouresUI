import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_courses/Contraints.dart';

class Walkthoughslider extends StatelessWidget {
  final String Title,subTitle, Description , image;
  const Walkthoughslider({Key? key, required this.Title, required this.Description, required this.image, required this.subTitle}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultpadding/2),
      color: Styling.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
          width: MediaQuery.of(context).size.width/4.4,
          ),
          SizedBox(height: defaultpadding*1.2,),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                subtitle(Title: Title,),
                subtitle(Title: subTitle,bordercolor: Styling.red,),
              ],
            ),
          ),
          // Text.rich(
          //  TextSpan(
          //     text: Title,style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 18,
          //    ),
          //     children: <TextSpan> [
          //       TextSpan(
          //         text: subTitle,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //
          //           decoration: TextDecoration.underline,
          //           decorationColor: Styling.red,
          //           decorationThickness: 2.8,
          //
          //         ),
          //       ),
          //     ]
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          SizedBox(height: defaultpadding),
          Text(Description,
          style: TextStyle(
            height: 1.2,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.6,
            color: Styling.textColor
          ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class subtitle extends StatelessWidget {
  const subtitle({Key? key,this.bordercolor = Styling.bgcolor , required this.Title}) : super(key: key);
  final Color bordercolor ;
  final String Title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: bordercolor,
              width: 2.0,
            ),
          )
      ),
      child: Text(Title,style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
