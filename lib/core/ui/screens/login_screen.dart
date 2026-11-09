import 'package:facebook/core/strings/strings.dart';
import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:facebook/core/ui/screens/main_screen.dart';
import 'package:facebook/core/ui/widgets/elevated_button_facebook.dart';
import 'package:facebook/core/ui/widgets/text_fields_facebook.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<String> accounts = [
    'omaresmateng@gmail.com',
    'omaresmateng@hotmail.com',
  ];
  final formKey = GlobalKey<FormState>();

  final List<String> passwords = ['test@123', 'test@456'];

  bool passwordHideChecker = true;
  String emailValue = '';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsetsGeometry.all(16),
        decoration: BoxDecoration(color: AppColors.white),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: screenSize.width * 0.6,
                    height: screenSize.height * 0.25,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        Strings.facebookLogo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                TextFieldsFacebook(
                  hintText: "Mobile Number or Email Address",
                  validatorFunction: _emailAddressValidator,
                ),
                SizedBox(height: screenSize.height * 0.025),
                TextFieldsFacebook(
                  hintText: 'Passowrd',
                  validatorFunction: _passwordValidator,
                  isPasswordHidden: passwordHideChecker,
                  suffixIcon: IconButton(
                    onPressed: _onEyeButtonPressed,
                    icon: Icon(
                      passwordHideChecker
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                ElevatedButtonFacebook(
                  childText: "Login",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    }
                  },
                ),
                SizedBox(height: screenSize.height * 0.02),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: WidgetStateColor.transparent,
                  ),
                  child: Text(
                    'Forgotten Passowrd ?',
                    style: TextStyle(color: AppColors.gray, fontSize: 16),
                  ),
                ),
                Spacer(),
                ElevatedButtonFacebook(
                  childText: 'Create Account',
                  onTap: () {},
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.blue,
                ),
                SizedBox(
                  height: screenSize.height * 0.1,
                  width: screenSize.width * 0.3,
                  child: Image.asset(Strings.metaLogo),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _emailAddressValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Required Field';
    }

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }

    if (!accounts.contains(value.toLowerCase())) {
      return 'Email Address doesn\'t exist';
    }

    emailValue = value.trim().toLowerCase();
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required Field';
    }

    int accountIndex = accounts.indexOf(emailValue);

    if (accountIndex == -1) {
      return 'wrong password';
    }

    if (passwords[accountIndex] != value) {
      return 'wrong password';
    }
    return null;
  }

  void _onEyeButtonPressed() {
    if (passwordHideChecker) {
      passwordHideChecker = false;
    } else {
      passwordHideChecker = true;
    }

    setState(() {});
  }
}
