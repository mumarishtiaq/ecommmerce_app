import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:ecommmerce_app/Common/buttons_templates.dart';
import 'package:ecommmerce_app/Common/input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
         resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              _createTopSection(
                color: const Color.fromARGB(255, 255, 255, 255),
                size: size,
              ),
          
              SizedBox(height: size.height * 0.05),
          
              _buildInputFieldSection(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
          
              SizedBox(height: size.height * 0.02),
          
              _createBottomSection(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createContainer({required Color color}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),
    );
  }

  Widget _createTopSection({required Color color, required Size size}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                // let the image scale down if needed:
                width: size.width * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlack,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create new account',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AppColors.greyText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputFieldSection({required Color color}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(label: "Username", hintText: "Enter your username"),
            const SizedBox(height: 16),
            InputField(label: "Email", hintText: "Enter your email"),
            const SizedBox(height: 16),
            InputField(
              label: "Password",
              hintText: "Enter your password",
              isPassword: true,
            ),
            const SizedBox(height: 16),
            InputField(
              label: "Confirm Password",
              hintText: "Confirm password",
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _createBottomSection({required Color color}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TermsCheckbox(),
            const SizedBox(height: 16),
            NormalButton(
              width: double.infinity,
              height: 48,
              text: "Sign Up",
              onPressed: () {
                // Handle sign up action
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({super.key});

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fontSize = size.width * 0.035; // ~14 for 400px wide screen

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: AppColors.primaryBlack,
        ),
        Expanded(
          child: Text(
            "By creating an account you have to agree with our terms & conditions.",
            style: TextStyle(fontSize: fontSize, color: AppColors.greyText),
          ),
        ),
      ],
    );
  }
}
