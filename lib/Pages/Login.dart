import 'package:app/Pages/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/top.png'),
          SizedBox(height: 40),
          Text(
            'Welcome!',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff64C3BF),
              ),
            ),
          ),
          Text(
            'Login',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, color: Color(0xff000000)),
            ),
          ),
          SizedBox(height: 20),

          Image.asset('assets/welcome.png', width: 320),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: firstname,

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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: password,

              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFFFFFF),
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility, color: Color(0xffACA7A7)),
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
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Text(
              'Forget Password?',
              style: TextStyle(color: Color(0xff64C3BF)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 199.63,
            height: 38.21,

            decoration: BoxDecoration(
              color : Color(0xff64C3BF),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Center(child: Text(
              'Login',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
              ),
            ),),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t Have Account?'),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (C)=> Signup()));
                },
                child: Text('Signup' , style: GoogleFonts.inter(textStyle: TextStyle(
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
