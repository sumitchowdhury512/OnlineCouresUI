import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_courses/Components/InputField.dart';
import 'package:online_courses/Components/Options_In_SignIn.dart';
import '../Contraints.dart';
import '../Sign_up/SignUp_Section.dart';

int currentSelectedIndex = 0;

// signup-SignIn section or Second section of the First page
class secondwalkthough extends StatefulWidget {
  const secondwalkthough({Key? key}) : super(key: key);

  @override
  _secondwalkthoughState createState() => _secondwalkthoughState();
}

class _secondwalkthoughState extends State<secondwalkthough> {
  int currentpage =0;
  PageController _controller = PageController();
  List <Widget> pageslide=[
    slidepage1(),slidepage2(),slidepage3()
  ];
  // id: currentSelectedIndex,
  _onchange(int index) {
    currentpage = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bgcolor,
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          scrollDirection: Axis.horizontal,
          onPageChanged: _onchange,
          itemCount: pageslide.length,
          itemBuilder: (context,int index) =>
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                _controller.jumpTo(0.0);
                              },
                              borderRadius: BorderRadius.circular(circularborder*2),
                              child: Container(
                                padding: EdgeInsets.only(top: 2.4,left: 2.4),
                                child: Icon(
                                  Icons.chevron_left,
                                  size: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(currentpage==0 ? "Who Are You ?" : currentpage==1? "Already Have A Account Login ?" : "Using Platform For First Time Signup",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 1
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(),
                      ],
                    ),
                    pageslide[index],
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: (){
                         currentpage==2?Navigator.pushNamed(context, '/Home'):
                         _controller.nextPage(duration: Duration(milliseconds: 2), curve: Curves.easeIn );
                         print('$currentSelectedIndex');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/15,
                        decoration: BoxDecoration(
                            color:currentpage==1? Colors.white: Styling.main,
                            borderRadius: BorderRadius.circular(16),
                            border: currentpage==1? Border.all(
                            color: Colors.black12.withOpacity(0.07)
                            ):null
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(defaultpadding/2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(),
                              Text(currentpage==0 ?'Continue' : currentpage == 1? 'Sign up': 'Save and Continue'  ,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
              )
        )
     );
  }
}

// first slider for signIn  (Option choosing - Student,Parent and Tutor)
class slidepage1 extends StatefulWidget {
  slidepage1({Key? key}) : super(key: key);

  @override
  _slidepage1State createState() => _slidepage1State();
}

class _slidepage1State extends State<slidepage1> {

  // List<Widget> Options=[
  //   Optionchoose(icon: 'assets/images/user-icon.png', option: 'Potential Student', description: 'You are planning to use our platform as\n student to learn new skill', id: 0, isSelected: currentSelectedIndex==index,
  //   Optionchoose(icon: 'assets/images/teacher-icon.png', option: 'Potential Tutor', description: 'You are planning to use our platform to teach\n the skills you already know', id: 1, isSelected: false,),
  //   Optionchoose(icon: 'assets/images/user-icon.png', option: 'Potential Parent', description: 'You are planning to use our platform as\n parent to track your child',id: 2, isSelected: false, ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: defaultpadding/4),
          Text("Please tell us little more about yourself and who you are.",
            style: TextStyle(
                fontSize: 12,
                color: Styling.textColor,
                fontWeight: FontWeight.normal
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: defaultpadding),
          ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,int index)=>
                  Optionchoose(
                    id: index,
                    isSelected: currentSelectedIndex==index,
                    onselect: () {
                      setState(() {
                        currentSelectedIndex=index;
                      });
                    },
                    icon: index==0?'assets/images/user-icon.png': index==1 ? 'assets/images/teacher-icon.png':'assets/images/user-icon.png',
                    option: index==0?'Potential Student':index==1?'Potential Tutor':'Potential Parent',
                    description: index==0?'You are planning to use our platform as a\n student to learn new skill':index==1?'You are planning to use our platform to teach\n the skills you already know':'You are planning to use our platform as\n parent to track your child',
                  ),
          ),
        ],
      ),
    );
  }
}

//Second Slider for signIn (SignIn Section )
class slidepage2 extends StatelessWidget {
  slidepage2({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:defaultpadding/2,bottom: defaultpadding/2.5),
                  child: Row(
                    children: [
                      Text('Email Address',
                        style: TextStyle(
                            fontSize: 12,
                            color:  Styling.textColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/16.2,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Johnkumar@gmail.com',
                      fillColor: Colors.red,
                      hintStyle: TextStyle(
                        fontSize: 13.5,
                        color:  Styling.textColor.withOpacity(0.5),
                      ),
                      // enabledBorder: const OutlineInputBorder(
                      //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Colors.black12.withOpacity(0.07),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(14),
                        borderSide: BorderSide(
                            color:  Styling.blues,
                            width: 1.4
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultpadding/1.5),
                        child: Image.asset(
                          'assets/icons/email.png',
                          // width: defaultpadding/4,
                        ),
                      ),
                      // contentPadding: EdgeInsets.only(left: 50)
                    ),
                  ),
                ),
                SizedBox(
                  height: defaultpadding/1.5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:defaultpadding/2,bottom: defaultpadding/2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Password',
                  style: TextStyle(
                      fontSize: 12,
                      color: Styling.textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                  ),
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/16.2,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'John123',
                fillColor: Colors.red,
                hintStyle: TextStyle(
                  fontSize: 13.5,
                  color:  Colors.grey,
                ),
                // enabledBorder: const OutlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                // ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: Colors.black12.withOpacity(0.07),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(14),
                  borderSide: BorderSide(
                      color:  Styling.blues,
                      width: 1.4
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultpadding/1.5),
                  child: Image.asset(
                    'assets/icons/file.png',
                    // width: defaultpadding/4,
                  ),
                ),
                // contentPadding: EdgeInsets.only(left: 50)
              ),
            ),
          ),
          // InputField(Hint: 'John123', image: 'assets/icons/file.png',),
          Spacer(),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: (){
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/15,
              decoration: BoxDecoration(
                  color: Styling.main,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultpadding/2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(),
                    Text('Save',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





