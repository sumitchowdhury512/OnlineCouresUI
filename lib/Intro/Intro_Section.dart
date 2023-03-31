import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_courses/Components/Intro_section.dart';
import 'package:online_courses/Contraints.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//Intro section or First section of the first Page
class workthough extends StatefulWidget {
  const workthough({Key? key}) : super(key: key);

  @override
  _workthoughState createState() => _workthoughState();
}

class _workthoughState extends State<workthough> {
  int _currentpage = 0;
  PageController _controller = PageController();

  List<Widget> walkthough =[
    Walkthoughslider(
      Title: 'Started Learning ',
      image: 'assets/images/intro1.png',
      Description: 'Learn almost any skill from a comfort\n of your home with our app',
      subTitle: 'New Skill',
    ),
    Walkthoughslider(
      Title: 'Connect With The ',
      image: 'assets/images/intro2.png',
      Description: 'You can easily connect with thousands\n of tutors buy using our platform',
      subTitle: 'Tutors',
    ),
  ];
  
  _onchange(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (_currentpage < 1)
        _currentpage++;
      else
        _currentpage = 0;

      _controller.animateToPage(_currentpage,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOut,
       );
     }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bgcolor,
       body: Stack(
         children: [
           Container(
             height: MediaQuery.of(context).size.height/1.55,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(circularborder)
             ),
             child: PageView.builder(
                 scrollDirection: Axis.horizontal,
                 controller: _controller,
                 itemCount: walkthough.length,
                 onPageChanged: _onchange,
                 itemBuilder: (context, int index) => Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     walkthough[index],
                   ],
                 )
             ),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: List<Widget>.generate(
                     // walkthough.length
                     1, (int index){
                   return
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(3),
                           // color: (index==_currentpage)? Styling.red : Styling.red.withOpacity(0.5),
                         ),
                         child: SmoothPageIndicator(
                         controller: _controller,
                         count: walkthough.length,
                         effect: SlideEffect(
                             spacing: 8.0,
                             radius: 4.0,
                             dotWidth: 8,
                             dotHeight: defaultpadding/4,
                             dotColor: Styling.red.withOpacity(0.5),
                             paintStyle: PaintingStyle.fill,
                             strokeWidth: 2,
                             activeDotColor: Styling.red),
                         ),
                     );
                   //   AnimatedContainer(
                   //   duration: Duration(milliseconds: 800),
                   //   height: defaultpadding/4,
                   //   width: 8,
                   //   margin: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                   //   decoration: BoxDecoration(
                   //     borderRadius: BorderRadius.circular(3),
                   //     color: (index==_currentpage)? Styling.red : Styling.red.withOpacity(0.5),
                   //   ),
                   // );
                   }
                 ),
               ),
               SizedBox(
                 height: defaultpadding*2,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Stack(
                     children: [
                       Container(
                         height: 28,
                         width: 28,
                         decoration: BoxDecoration(
                           color: Styling.bgcolor,
                           borderRadius: BorderRadius.circular(circularborder*2),
                           border: Border.all(
                               color: Colors.black12.withOpacity(0.07)
                           ),
                         ),
                        ),
                       InkWell(
                         onTap: (){
                           _controller.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
                         },
                         borderRadius: BorderRadius.circular(circularborder*2),
                         child: Container(
                           padding: EdgeInsets.only(top: 2.2,left: 2.2),
                           child: Icon(
                               Icons.chevron_left,
                               size: 22,
                             ),
                         ),
                         ),
                       ],
                     ),
                   SizedBox(width: defaultpadding/2,),
                   Stack(
                     children: [
                       Container(
                         height: 28,
                         width: 28,
                         decoration: BoxDecoration(
                           color: Styling.bgcolor,
                           borderRadius: BorderRadius.circular(circularborder*2),
                           border: Border.all(
                               color: Colors.black12.withOpacity(0.07)
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           _controller.animateTo(MediaQuery.of(context).size.width,
                               duration: new Duration(seconds: 1),
                               curve: Curves.easeIn);
                         },
                         borderRadius: BorderRadius.circular(circularborder*2),
                         child: Container(
                           padding: EdgeInsets.only(top: 2.2,left: 3),
                           child: Icon(
                             Icons.chevron_right,
                             size: 22,
                           ),
                         ),
                       ),
                     ],
                   ),
                   // IconButton(
                   //   splashRadius: 15,
                   //   iconSize: 22,
                   //   padding: EdgeInsets.fromLTRB(0, 4, 4, 4),
                   //  onPressed: (){},
                   //  icon: Icon(Icons.chevron_right),
                   //  ),
                  ]
               ),
             ],
           ),
         ],
       ),
    );
  }
}