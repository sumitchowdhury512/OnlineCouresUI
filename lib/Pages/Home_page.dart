import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_courses/Contraints.dart';
import 'Home_Section.dart';

class Mainscreen extends StatefulWidget {
 Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Styling.red,
            ),
          ),
          Container(
            margin: EdgeInsets.all(defaultpadding),
            decoration: BoxDecoration(
                color: Styling.bgcolor,
                borderRadius: BorderRadius.circular(circularborder/2)
            ),
            child: Padding(
              padding: const EdgeInsets.all(defaultpadding*2),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Stack(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/1.35,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(defaultpadding),
                                       border: Border.all(
                                         color: Colors.black12.withOpacity(0.07)
                                       ),
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 5),
                                       child: ListTile(
                                         minVerticalPadding: 2,
                                         horizontalTitleGap: 14,
                                         leading: Padding(
                                           padding: const EdgeInsets.only(left: 5),
                                           child: CircleAvatar(
                                             maxRadius: 18,
                                             minRadius: 14,
                                             backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_960_720.png'),
                                             // child: Image.network('',
                                             // fit: BoxFit.contain,
                                             // ),
                                           ),
                                         ),
                                         contentPadding: EdgeInsets.only(right: 2),
                                         title: Text('John kumar',
                                           maxLines: 1,
                                           textAlign: TextAlign.left,
                                           style: TextStyle(
                                             fontSize: 12,
                                             color: Styling.textColor,
                                             fontWeight: FontWeight.bold,
                                             letterSpacing: 0.6,
                                           ),
                                         ),
                                         subtitle: Text('Johnkumar@gmail.com',
                                           maxLines: 1,
                                           textAlign: TextAlign.left,
                                             style: TextStyle(
                                               fontSize: 9,
                                               color: Colors.grey,
                                               letterSpacing: 0.6,
                                             ),
                                         ),
                                         trailing: Padding(
                                           padding: const EdgeInsets.only(left: 0),
                                           child: Icon(
                                             Icons.chevron_right,
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: defaultpadding,),
                                   Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(defaultpadding*1.5),
                                       border: Border.all(
                                           color: Colors.black12.withOpacity(0.07)
                                       ),
                                     ),
                                     child: Container(
                                       margin:EdgeInsets.symmetric(vertical: defaultpadding),
                                       child: Column(
                                         children: [
                                           options(text: 'Home', icons: 'assets/icons/home.png',),
                                           options(text: 'My Courses', icons: 'assets/icons/file.png',),
                                           options(text: 'Profile', icons: 'assets/icons/user.png',),
                                         ],
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: defaultpadding,),
                                   Expanded(
                                     child: Container(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(defaultpadding*1.5),
                                         border: Border.all(
                                             color: Colors.black12.withOpacity(0.07)
                                         ),
                                       ),
                                       child: Center(
                                         child: Padding(
                                           padding: const EdgeInsets.all(defaultpadding),
                                           child: Column(
                                             children: [
                                               Image.asset('assets/images/user-icon.png',
                                               height: MediaQuery.of(context).size.height*0.055,
                                               ),
                                               SizedBox(
                                                 height:  defaultpadding/1.4,
                                               ) ,
                                               FittedBox(
                                                 child: Text('Upgrade Plan',
                                                 style: TextStyle(
                                                   fontSize: 14,
                                                   letterSpacing: 0.8,
                                                   fontWeight: FontWeight.bold
                                                 ),
                                                 ),
                                               ),
                                               SizedBox(
                                                 height:  defaultpadding/2,
                                               ) ,
                                               Text.rich(
                                                 TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Become a ',
                                                    ),
                                                    TextSpan(
                                                      text: 'pro ',
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      )
                                                    ),
                                                    TextSpan(
                                                        text: 'member today and Save more than ',
                                                    ),
                                                    TextSpan(
                                                        text: '75%',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold
                                                        )
                                                    ),
                                                  ],
                                                     style: TextStyle(
                                                     fontSize: 10,
                                                     letterSpacing: 0.5,
                                                     wordSpacing: 0.4,
                                                     height: 1.5
                                                 ),
                                                 ),
                                                 textAlign: TextAlign.center,
                                               ),
                                               Spacer(),
                                               TextButton(onPressed: (){},
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                       color: Styling.tagcolor,
                                                       borderRadius: BorderRadius.circular(defaultpadding/1.8),
                                                     ),
                                                     child: Padding(
                                                       padding: const EdgeInsets.symmetric(horizontal: defaultpadding/2, vertical: defaultpadding/1.5),
                                                       child: Row(
                                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         children: [
                                                           Spacer(
                                                           ),
                                                           Text('See Deal',
                                                           style: TextStyle(
                                                             color: Styling.textColor,
                                                             fontSize: 12,
                                                             fontWeight: FontWeight.bold,
                                                             letterSpacing: 0.5
                                                           ),
                                                           ),
                                                           Spacer(),
                                                           Icon(
                                                             Icons.chevron_right,
                                                             color: Styling.textColor,
                                                             size: 18,
                                                           ),
                                                         ],
                                                       ),
                                                     ),
                                                   ),
                                               ),
                                             ],
                                           ),
                                         ),

                                       )
                                     ),
                                   ),
                                   SizedBox(height: defaultpadding,),
                                 ],
                               ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.06,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(defaultpadding/1.5),
                                      border: Border.all(
                                          color: Colors.black12.withOpacity(0.07),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          'Log Out',
                                          style: TextStyle(
                                              wordSpacing: 1,
                                              letterSpacing: 0.6,
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(width: defaultpadding*2,),
                    Expanded(
                        flex: 4,
                        child: Homemainscreen(),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class options extends StatelessWidget {
  final String icons,text;
  const options({Key? key, required this.icons, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultpadding),
      child: InkWell(
        child: Container(
          height: MediaQuery.of(context).size.height/16,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultpadding),
            // color: Colors.blue
            // border: Border.all(
            //     color: Colors.black12.withOpacity(0.07)
            // ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height/16,
            width: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: defaultpadding/2,vertical: defaultpadding/2),
            child: Row(
              children: [
                Image.asset(icons,
                 height: MediaQuery.of(context).size.height*0.05,
                  width: 15,
                ),
                SizedBox(width: 10,),
                Text(text,
                  style: TextStyle(
                    fontSize: 13,
                    color: Styling.textColor,
                    letterSpacing: 0.6,

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
