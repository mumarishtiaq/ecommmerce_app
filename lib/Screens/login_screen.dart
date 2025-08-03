import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Column(
          children: [
            // 1) Small top padding
            Spacer(flex: 1),

            // 2) Logo area
            Flexible(
              flex: 2,
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  // let the image scale down if needed:
                  width: size.width * 0.5,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // 3) Main content (texts + fields + login button)
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
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
                    const SizedBox(height: 8),
                    Text(
                      'please login or sign up to continue our app',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: AppColors.greyText,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Email & Password
                    buildInputField(
                      label: "Email",
                      hintText: "Enter your email",
                    ),
                    const SizedBox(height: 16),
                    buildInputField(
                      label: "Password",
                      hintText: "Enter your password",
                      isPassword: true,
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    buildButton(
                      text: "Login",
                      width: double.infinity,
                      height: 48,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),

            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "or",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColors.greyText,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
              ),
            ),

            // 4) Social buttons area
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildSocialButton(
                      width: double.infinity,
                      height: 48,
                      color: AppColors.facebookColor,
                      icon: Icons.facebook,
                      iconColor: AppColors.primaryWhite,
                      text: "Continue with Facebook",
                      textColor: AppColors.primaryWhite,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 12),
                    buildSocialButton(
                      width: double.infinity,
                      height: 48,
                      color: AppColors.primaryWhite,
                      icon: FontAwesomeIcons.google,
                      iconColor: AppColors.pureBlack,
                      text: "Continue with Google",
                      textColor: AppColors.primaryBlack,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 12),
                    buildSocialButton(
                      width: double.infinity,
                      height: 48,
                      color: AppColors.primaryWhite,
                      icon: FontAwesomeIcons.apple,
                      iconColor: AppColors.pureBlack,
                      text: "Continue with Apple",
                      textColor: AppColors.primaryBlack,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),

            // 5) Bottom padding
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Widget buildInputField({
    required String label,
    required String hintText,
    bool isPassword = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBlack,
            ),
          ),
          const SizedBox(height: 2),
          TextField(
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

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.primaryBlack,
                  width: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton({
    required String text,
    required double width,
    required double height,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
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
    return SizedBox(
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
    );
  }
}
