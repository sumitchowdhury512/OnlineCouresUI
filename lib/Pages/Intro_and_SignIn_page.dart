import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_courses/Contraints.dart';
import '../Intro/Intro_Section.dart';
import '../Sign_In/SignIn_Section.dart';

//SIGNUP PAGE IS DIVIDED INTO TWO SECTION - 1.intro section 2.signup/signIn section
class signup extends StatelessWidget {
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
                    // flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(circularborder*2),
                        border: Border.all(
                            color: Colors.black12.withOpacity(0.07),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(defaultpadding/2),
                        child: workthough(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: defaultpadding*2.5,
                  ),
                  Expanded(
                    // flex: 3,
                    child: secondwalkthough(),
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


