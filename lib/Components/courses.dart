import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_courses/Contraints.dart';

class courses extends StatelessWidget {
  const courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultpadding),
          border: Border.all(
            color: Colors.black12.withOpacity(0.07),
          ),
        ),
        child: Column(
          children: [
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(defaultpadding),topLeft: Radius.circular(defaultpadding)),
                    image: DecorationImage(
                      image: NetworkImage('https://leverageedu.com/blog/wp-content/uploads/2019/08/Short-Term-Courses-after-10th.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12,left: 12,bottom: 4,right: 4),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('- 3h 15min',
                         style: TextStyle(
                           fontSize: 12,
                           color: Styling.textColor
                         ),
                        ),
                        SizedBox(height: defaultpadding/2.8,),
                        Text('JavaScript',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 0.6
                         ),
                        ),
                        SizedBox(height: defaultpadding/2,),
                        Expanded(
                            child: Text('Advance web application',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Styling.textColor
                              ),
                           ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }
}
