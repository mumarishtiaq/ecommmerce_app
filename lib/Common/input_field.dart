import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isPassword;

  const InputField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
   bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBlack,
            ),
          ),
          // const SizedBox(height: 2),
          TextField(
            obscureText: widget.isPassword && !isPasswordVisible,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryBlack,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.greyText,
              ),

              suffixIcon: _buildSuffixIcon(color: AppColors.primaryBlack),

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

  Widget _buildSuffixIcon({
    required Color color,
  }) {
    if (widget.isPassword) {
      return IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: color,
        ),
        onPressed: () {
          togglePasswordVisiblity();
        },
      );
    } else {
      return Icon(
        Icons.check_circle,
        color: color,
      );
    }
  }

   void togglePasswordVisiblity() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }
}
