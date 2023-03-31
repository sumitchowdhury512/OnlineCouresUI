import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_courses/Components/Lessons.dart';
import 'package:online_courses/Components/courses.dart';
import '../Contraints.dart';

class Homemainscreen extends StatelessWidget {
  Homemainscreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bgcolor,
     body: Row(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, ',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  Text('John Kumar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        height: 1.5
                    ),
                  ),
                  SizedBox(
                    height: defaultpadding*1.5 ,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 0.5
                        ),
                      ),
                      SizedBox(
                        height: defaultpadding,
                      ),
                      Container(
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            coursesoption(icons: 'assets/icons/menu.png', title: 'All',),
                            coursesoption(icons: 'assets/icons/star.png', title: 'Popular',),
                            coursesoption(icons: 'assets/icons/heart.png', title: 'Free',),
                            coursesoption(icons: 'assets/icons/pro.png', title: 'Pro',),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultpadding,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/1.94,
                          child: homescreencourses()),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: defaultpadding*2,),
          Flexible(
            flex: 2,
            child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          // width: MediaQuery.of(context).size.width/10,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: 'search',
                                fillColor: Colors.red,
                                contentPadding: EdgeInsets.only(right: 0),
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color:  Colors.grey,
                                ),
                                // enabledBorder: const OutlineInputBorder(
                                //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                                // ),
                                border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(18),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(defaultpadding/1.8),
                                  child: Image.asset(
                                    'assets/icons/search.png',
                                     height: 15,
                                    width: 15,
                                    // width: defaultpadding/4,
                                   ),
                                 ),
                                // contentPadding: EdgeInsets.only(left: 50)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: defaultpadding/2,),
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Styling.bgcolor,
                                borderRadius: BorderRadius.circular(circularborder*2),
                                border: Border.all(
                                    color: Colors.black12.withOpacity(0.07)
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              borderRadius: BorderRadius.circular(circularborder*2),
                              child: Container(
                                padding: EdgeInsets.only(top: 10,left: 11),
                                child: Image.asset('assets/icons/alarm.png',
                                  height: 15,
                                  width: 15,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: defaultpadding*2,),
                        Text(
                          'Lessons',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                            fontSize: 14
                          ),
                        ),
                        SizedBox(height: defaultpadding/2,),
                        Column(
                          children: [
                            Lessons(title: 'Introduction & Basic',subtitle: 'Learn all the basic you need to know to get started',time: '- 3h 15min',percentage: 0.5, color: Styling.tagcolor,icons: 'assets/icons/search.png',),
                            Lessons(title: 'Terminology',subtitle: 'Start getting to know all the terminology',time: '- 1h 15min',percentage: 0.7,color: Styling.blues,icons: 'assets/icons/file.png'),
                            Lessons(title: 'Advanced Apps',subtitle: 'Your first-step to building an advanced web app ',time: '- 0h 25min',percentage: 0.6,color: Styling.main,icons: 'assets/icons/settings.png'),
                          ],
                        ),
                      ],
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

class coursesoption extends StatelessWidget {
  final String icons,title;
  const coursesoption({Key? key,required this.icons,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultpadding/2),
      child: InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width/20,
          height: MediaQuery.of(context).size.height/8,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultpadding*2),
                  border: Border.all(
                    color: Colors.black12.withOpacity(0.07),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9,top: 8,bottom: 12,right: 8),
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Styling.blues,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(icons),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(defaultpadding*2),
                        //     color: Colors.blue,
                        //     image: DecorationImage(
                        //         image: AssetImage('assets/icons/menu.png',
                        //         )
                        //     ),
                        //   ),
                        // ),
                        Text(title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Styling.textColor,
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class homescreencourses extends StatelessWidget {
 homescreencourses({Key? key}) : super(key: key);
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 0.6),
            mainAxisSpacing: defaultpadding,
            crossAxisSpacing: defaultpadding*1.2,
          ),
          scrollDirection: Axis.vertical,
          itemCount: 4,
          controller: _controller,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,int index) =>
              GestureDetector(
                child:
                courses(),
              ),
        ),
      ),
    );
  }
}

