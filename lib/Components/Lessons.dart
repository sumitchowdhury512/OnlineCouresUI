import 'package:flutter/material.dart';

import '../Contraints.dart';

class Lessons extends StatelessWidget {
final String time,title,subtitle,icons;
final double percentage;
final Color color;
  const Lessons({Key? key, required this.time, required this.title, required this.subtitle, required this.percentage,required this.color,required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultpadding/2),
        child: Container(
          height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(circularborder),
            border: Border.all(
              color: Colors.black12.withOpacity(0.07),
            ),
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: color,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(icons),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Text(time,
                  style: TextStyle(
                      fontSize: 11,
                      color: Styling.textColor
                  ),
                ),
                SizedBox(height: defaultpadding/3,),
                Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 0.6
                  ),
                ),
                SizedBox(height: defaultpadding/2.5,),
                Container(
                  child: Text(subtitle,
                    style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        color: Styling.textColor
                    ),
                  ),
                ),
                Spacer(),
                linearprogessanimation(context),
                // linearprogessanimation(percentage: percentage,),
                SizedBox(
                  height: defaultpadding,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget linearprogessanimation (dynamic Context){
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0,end: percentage),
          duration: Duration(milliseconds: 800),
          builder: (context,double percentage, child) => Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: LinearProgressIndicator(
                    value: percentage,
                    color: color,
                    backgroundColor:  Styling.textColor.withOpacity(0.5),
                  ),
                ),
              ),
              SizedBox(width: defaultpadding,),
              Text((percentage*100).toInt().toString()+'%',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black
                ),
              )
            ],
          )
      ),
    );

  }
}