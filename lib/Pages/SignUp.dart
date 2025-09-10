import 'package:app/Pages/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirm = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Image.asset('assets/top.png'),
          SizedBox(height: 40),
          Text(
            'Create Account',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff64C3BF),
              ),
            ),
          ),
          Text(
            'Enter your Personal Data',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, color: Color(0xff000000)),
            ),
          ),

          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: firstname,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'First Name',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: lastname,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Last Name',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: email,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: phone,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: password,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility , color : Color(0xffACA7A7),),
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: confirm,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Confirm Password',
                suffixIcon: Icon(Icons.visibility , color : Color(0xffACA7A7),),

                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                ),
              ),
            ),
          ),

            SizedBox(
              height: 20,
            ),

            Container(
              width: 199.63,
              height: 38.21,

              decoration: BoxDecoration(
                color : Color(0xff64C3BF),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(child: Text(
                'Signup',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
                ),
              ),),
            ),

          SizedBox(height: 20),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an Account? '),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (C)=> Login()));
                },
                child: Text('Login' , style: GoogleFonts.inter(textStyle: TextStyle(
                  color : Colors.blue,
                )),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
