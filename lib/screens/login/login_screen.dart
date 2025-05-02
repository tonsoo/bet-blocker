import 'package:bet_blocker/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String path = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cSecond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 99, right: 36, left: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/your-logo.png',
                width: 105,
                height: 105,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 48),
              Text(
                'JÁ TENHO LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.cSecond100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(
                      color: AppColors.cSecond100,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(color: AppColors.cMain, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: AppColors.cFourth,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                  hintText: 'E-mail',
                ),
                style: TextStyle(
                  color: AppColors.cThird,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                cursorColor: AppColors.cMain,
              ),
              SizedBox(height: 24),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.cMain,
                  foregroundColor: AppColors.cSecond,
                  minimumSize: Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    side: BorderSide.none,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14.5, horizontal: 20),
                ),
                child: Text(
                  'CONTINUAR',
                  style: TextStyle(
                    color: AppColors.cSecond,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 38),
              Container(
                height: 1,
                decoration: BoxDecoration(color: AppColors.cMain),
              ),
              SizedBox(height: 32),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.cThird,
                  foregroundColor: AppColors.cSecond,
                  minimumSize: Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    side: BorderSide.none,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14.5, horizontal: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 17,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Entrar com Google',
                      style: TextStyle(
                        color: AppColors.cSecond,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
