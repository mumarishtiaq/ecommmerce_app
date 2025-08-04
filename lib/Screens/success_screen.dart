import 'package:ecommmerce_app/Common/app_colors.dart';
import 'package:ecommmerce_app/Common/buttons_templates.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const Spacer(flex: 2), // Push content down

              // Icon(Icons.check_circle_outline, size: 70, color: Colors.green),
              const AnimatedTickIcon(),

              const SizedBox(height: 25),

              Text(
                "Successful!",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlack,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "Congratulations! You have successfully registered",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.greyText,
                ),
              ),

              const Spacer(flex: 3), 

              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: NormalButton(
                  width: double.infinity,
                  height: 48,
                  text: "Start Shopping",
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ),
              const Spacer(flex: 1), 

            ],
          ),
        ),
      ),
    );
  }
}


class AnimatedTickIcon extends StatefulWidget {
  const AnimatedTickIcon({super.key});

  @override
  State<AnimatedTickIcon> createState() => _AnimatedTickIconState();
}

class _AnimatedTickIconState extends State<AnimatedTickIcon> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _scaleAnim = CurvedAnimation(parent: _controller, curve: Curves. easeOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnim,
      child: const Icon(Icons.check_circle_outline, size: 70, color: Colors.green),
    );
  }
}

