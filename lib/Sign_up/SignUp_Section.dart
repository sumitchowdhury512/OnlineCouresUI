import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:online_courses/Components/InputField.dart';
import 'package:online_courses/Contraints.dart';
import 'package:online_courses/Sign_In/SignIn_Section.dart';

//Third Slider for sign In (Sign-Up Section )
class slidepage3 extends StatefulWidget {
  const slidepage3({
    Key? key,
  }) : super(key: key);

  @override
  _slidepage3State createState() => _slidepage3State();
}

class _slidepage3State extends State<slidepage3> {
  @override
  void initState() {
    debugPrint('$widget.id');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: currentSelectedIndex == 0
          ? Options1(context)
          : currentSelectedIndex == 1
              ? Options2(context)
              : Options3(context),
    );
  }

  Widget Options1(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: defaultpadding / 2, bottom: defaultpadding / 2.5),
                child: Row(
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                          fontSize: 12,
                          color: Styling.textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16.2,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'John Kumar',
                    fillColor: Colors.red,
                    hintStyle: TextStyle(
                      fontSize: 13.5,
                      color: Styling.textColor.withOpacity(0.5),
                    ),
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.black12.withOpacity(0.07),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Styling.blues, width: 1.4),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(defaultpadding / 1.5),
                      child: Image.asset(
                        'assets/icons/user.png',
                        // width: defaultpadding/4,
                      ),
                    ),
                    // contentPadding: EdgeInsets.only(left: 50)
                  ),
                ),
              ),
              SizedBox(
                height: defaultpadding / 1.5,
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: defaultpadding / 2, bottom: defaultpadding / 2.5),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 12,
                          color: Styling.textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16.2,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Johnkumar@gmail.com',
                    fillColor: Colors.red,
                    hintStyle: TextStyle(
                      fontSize: 13.5,
                      color: Styling.textColor.withOpacity(0.5),
                    ),
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.black12.withOpacity(0.07),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Styling.blues, width: 1.4),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(defaultpadding / 1.5),
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
                height: defaultpadding / 1.5,
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: defaultpadding / 2, bottom: defaultpadding / 2.5),
                child: Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 12,
                          color: Styling.textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16.2,
                child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                    hintText: '9939849987',
                    fillColor: Colors.red,
                    hintStyle: TextStyle(
                      fontSize: 13.5,
                      color: Styling.textColor.withOpacity(0.5),
                    ),
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.black12.withOpacity(0.07),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Styling.blues, width: 1.4),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(defaultpadding / 1.5),
                      child: Image.asset(
                        'assets/icons/user.png',
                        // width: defaultpadding/4,
                      ),
                    ),
                    // contentPadding: EdgeInsets.only(left: 50)
                  ),
                ),
              ),
              SizedBox(
                height: defaultpadding / 1.5,
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: defaultpadding / 2, bottom: defaultpadding / 2.5),
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 12,
                          color: Styling.textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16.2,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'John123',
                    fillColor: Colors.red,
                    hintStyle: TextStyle(
                      fontSize: 13.5,
                      color: Styling.textColor.withOpacity(0.5),
                    ),
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.black12.withOpacity(0.07),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Styling.blues, width: 1.4),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(defaultpadding / 1.5),
                      child: Image.asset(
                        'assets/icons/file.png',
                        // width: defaultpadding/4,
                      ),
                    ),
                    // contentPadding: EdgeInsets.only(left: 50)
                  ),
                ),
              ),
              SizedBox(
                height: defaultpadding / 1.5,
              ),
            ],
          ),
        ),
        SizedBox(height: defaultpadding / 4),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Styling.main.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(defaultpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Sign Up Using Social Media',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultpadding / 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(defaultpadding / 2),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 5.5,
                              color: Styling.bgcolor,
                              child: ListTile(
                                leading: FaIcon(FontAwesomeIcons.google),
                                title: Text(
                                  'Google',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: defaultpadding,
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 5.5,
                                color: Colors.blue,
                                child: ListTile(
                                  leading: Icon(
                                    Icons.facebook,
                                  ),
                                  title: Text('Google'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Options2(BuildContext context) {
    return Column(
      children: [
        Inputfieldwithlabel(
          outsidehint: 'Full Name',
          image: 'assets/icons/user.png',
          Hint: 'JOHN KUMAR',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Email',
          image: 'assets/icons/email.png',
          Hint: 'johnmith@gmail.com',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Phone Number',
          image: 'assets/icons/user.png',
          Hint: '9939849XXX',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Password',
          Hint: 'John123',
          image: 'assets/icons/file.png',
        ),
      ],
    );
  }

  Options3(BuildContext context) {
    return Column(
      children: [
        Inputfieldwithlabel(
          outsidehint: 'Full Name',
          image: 'assets/icons/user.png',
          Hint: 'JOHN KUMAR',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Email',
          image: 'assets/icons/email.png',
          Hint: 'jhnmith@gmail.com',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Phone Number',
          image: 'assets/icons/user.png',
          Hint: '9939849XXX',
        ),
        Inputfieldwithlabel(
          outsidehint: 'Password',
          Hint: 'John123',
          image: 'assets/icons/file.png',
        ),
      ],
    );
  }
}
