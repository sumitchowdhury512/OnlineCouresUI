import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Contraints.dart';

class Optionchoose extends StatefulWidget {
  final String icon,option,description;
  final int id;
  final VoidCallback onselect;
  final bool isSelected;
  const Optionchoose({Key? key,required this.id, required this.icon, required this.option, required this.description, required this.isSelected, required this.onselect}) : super(key: key);
  @override
  _OptionchooseState createState() => _OptionchooseState();
}

class _OptionchooseState extends State<Optionchoose> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  MediaQuery.of(context).size.height/4.7,
      padding: EdgeInsets.only(bottom: defaultpadding),
      child: GestureDetector(
        onTap : widget.onselect,
        // splashColor: Colors.transparent,
        // hoverColor: Colors.transparent,
        // highlightColor: Colors.transparent,
        // onTap: (){
        //
        // },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styling.bgcolor,
                borderRadius: BorderRadius.circular(circularborder),
                border: Border.all(
                  // color:select==widget.id? Styling.red : Colors.black,
                color: widget.isSelected?Styling.red.withOpacity(0.5) : Colors.black12.withOpacity(0.07),
                width: widget.isSelected? 2:1,
                ),

                // boxShadow: [
                //  BoxShadow(
                //    color: Colors.black.withOpacity(0.5),
                //    spreadRadius: 0.2,
                //    blurRadius: 0.1,
                //  ),
                // ]
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(defaultpadding/2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(
                    //   height: defaultpadding,
                    // ),
                    Image.asset(widget.icon,
                      width: defaultpadding*2.2,
                       height: defaultpadding*2.2,
                    ),
                    SizedBox(
                      height: defaultpadding/3.5,
                    ),
                    Text(widget.option,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: 0.4
                     ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: defaultpadding*0.01,
                    ),
                    Text(widget.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Styling.textColor,
                        fontSize: 11.5,
                        height: 1.2,
                        letterSpacing: 0.15,
                        wordSpacing: 0.4
                      ),
                    ),
                    // SizedBox(
                    //   height: defaultpadding/2,
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

