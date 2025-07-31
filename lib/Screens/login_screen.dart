import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sixe = MediaQuery.of(context).size;
    final height = sixe.height;
    final width = sixe.width;
    return  Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03,),
            Center(
              child: Padding(
                 padding: EdgeInsets.only(bottom: 35, top: 29),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: height * 0.15,
                ),
              ),
            ),  


//Welcome Text
           Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      child: Align(
        alignment: Alignment.centerLeft, 
        child: Text(
          'Welcome!',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryBlack,
          ),
        ),
      ),
    ),
    
// Sub Text
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 30),
      child: Align(
        alignment: Alignment.centerLeft, 
        child: Text(
          'please login or sign up to continue our app',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.greyText,
          ),
        ),
      ),
    ),

       SizedBox(height: height * 0.06,),
                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(12),
                      //   borderSide: BorderSide(color: Colors.grey),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(12),
                      //   borderSide: BorderSide(color: Colors.blue),
                      // ),
                    ),
                  ),
                ),



        
          ],
          
        ),
      
    );
  }
}