import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sixe = MediaQuery.of(context).size;
    final height = sixe.height;
    final width = sixe.width;
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.03),
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

          SizedBox(height: height * 0.06),

          // Email Field
          buildInputField(label: "Email", hintText: "Enter your email"),
          SizedBox(height: height * 0.03),
          buildInputField(
            label: "Password",
            hintText: "Enter your password",
            isPassword: true,
          ),
          SizedBox(height: height * 0.06),

            // Login Button
            buildButton(text: "Login", width: width, height: height * 0.055, onPressed: () {}),
          SizedBox(height: height * 0.04),

            buildSocialButton(
              width: width,
              height: height * 0.055,
              color: AppColors.facebookColor,
              icon: Icons.facebook,
              iconColor: AppColors.primaryWhite,
              text: "Continue with Facebook",
              textColor: AppColors.primaryWhite,
              onPressed: () {},
            ),
             SizedBox(height: height * 0.04),

            buildSocialButton(
              width: width,
              height: height * 0.055,
              color: AppColors.primaryWhite,
              icon: FontAwesomeIcons.google,
              iconColor: AppColors.pureBlack,
              text: "Continue with Google",
              textColor: AppColors.primaryBlack,
              onPressed: () {},
            ),
             SizedBox(height: height * 0.04),

            buildSocialButton(
              width: width,
              height: height * 0.055,
              color: AppColors.primaryWhite,
              icon: FontAwesomeIcons.apple,
              iconColor: AppColors.pureBlack,
              text: "Continue with Apple",
              textColor: AppColors.primaryBlack,
              onPressed: () {},
            )

            
          ],
        ),
      );
  }

  Widget buildInputField({
    required String label,
    required String hintText,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlack,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: TextField(
            obscureText: isPassword,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryBlack,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.greyText,
              ),
              suffixIcon: Icon(
                Icons.check_circle,
                color: AppColors.primaryBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton({
    required String text,
    required double width,
    required double height,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: AppColors.primaryBlack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryWhite,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton({
    required double width,
    required double height,
   required Color color,
    required IconData icon,
    required Color iconColor,
    required String text,
    required VoidCallback onPressed,
    Color? textColor,
    BorderSide? border,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        width: width,
        height: height,
        child: OutlinedButton.icon(
          icon: Icon(icon, color: iconColor),
          label: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          style: OutlinedButton.styleFrom(
            elevation: 2,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
