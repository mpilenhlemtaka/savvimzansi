import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back arrow
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFE86E0A), size: 24),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(height: 16),

                // Heading
                Center(
                  child: Text(
                    'Create your account',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Subheading
                Center(
                  child: Text(
                    'Sign up with one of the following options',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Name
                const TextFieldLabel("Name"),
                const RoundedInputField(),

                const SizedBox(height: 16),

                // Email
                const TextFieldLabel("Email"),
                const RoundedInputField(),

                const SizedBox(height: 16),

                // Phone Number
                const TextFieldLabel("Phone Number"),
                const RoundedInputField(),

                const SizedBox(height: 16),

                // Password
                const TextFieldLabel("Password"),
                const RoundedInputField(obscureText: true),

                const SizedBox(height: 32),

                // Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE86E0A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                      // Handle create account
                    },
                    child: const Text(
                      'OPEN AN ACCOUNT',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Login link
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                          // Navigate to login screen
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFE86E0A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Label above each input
class TextFieldLabel extends StatelessWidget {
  final String label;
  const TextFieldLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}

// Rounded input fields
class RoundedInputField extends StatelessWidget {
  final bool obscureText;

  const RoundedInputField({this.obscureText = false, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(fontFamily: 'Poppins'),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
