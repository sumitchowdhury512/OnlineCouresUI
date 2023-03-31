import 'package:flutter/material.dart';
import '../Contraints.dart';

class Inputfieldwithlabel extends StatelessWidget {

  final String outsidehint,image,Hint ;
  const Inputfieldwithlabel({Key? key, required this.outsidehint, required this.image, required this.Hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:defaultpadding/2,bottom: defaultpadding/2.5),
            child: Row(
              children: [
                Text(outsidehint,
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
                hintText: Hint,
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
                    image,
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
    );
  }
}

class InputField extends StatelessWidget {
  final String image,Hint ;
  const InputField({Key? key, required this.image, required this.Hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/16.2,
      child: TextField(
       maxLines: 1,
       decoration: InputDecoration(
         hintText: Hint,
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
             image,
             // width: defaultpadding/4,
           ),
         ),
         // contentPadding: EdgeInsets.only(left: 50)
       ),
        ),
    );
  }
}
