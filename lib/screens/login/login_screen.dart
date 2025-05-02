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
          padding: EdgeInsets.only(top: 99, right: 36, left: 36, bottom: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: PageView(children: [_Login()])),
              _PageButtonsWrapper(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageButtonsWrapper extends StatefulWidget {
  const _PageButtonsWrapper();

  @override
  State<_PageButtonsWrapper> createState() => _PageButtonsWrapperState();
}

class _PageButtonsWrapperState extends State<_PageButtonsWrapper> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.cMain, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5.5,
        children: [
          Expanded(
            child: _PageButton(
              icon: 'assets/images/next.png',
              title: 'LOGIN',
              onClick:
                  () => setState(() {
                    isLogin = true;
                  }),
              selected: isLogin,
            ),
          ),
          Expanded(
            child: _PageButton(
              icon: 'assets/images/next.png',
              title: 'CADASTRO',
              onClick:
                  () => setState(() {
                    isLogin = false;
                  }),
              selected: !isLogin,
            ),
          ),
        ],
      ),
    );
  }
}

class _PageButton extends StatefulWidget {
  const _PageButton({
    required this.title,
    required this.icon,
    required this.onClick,
    this.selected = false,
  });

  final String title;
  final String icon;
  final bool selected;
  final void Function() onClick;

  @override
  State<_PageButton> createState() => _PageButtonState();
}

class _PageButtonState extends State<_PageButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _textColorAnim;
  late Animation<Color?> _btnBgColorAnim;
  late Animation<Color?> _btnForeColorAnim;
  final duration = Duration(milliseconds: 350);
  Color? color;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: duration, vsync: this);
    _textColorAnim = ColorTween(
      begin: AppColors.cSecond,
      end: AppColors.cMain,
    ).animate(_controller)..addListener(() {
      setState(() {});
    });

    _btnBgColorAnim = ColorTween(
      begin: AppColors.cMain,
      end: AppColors.cSecond,
    ).animate(_controller)..addListener(() {
      setState(() {});
    });

    _btnForeColorAnim = ColorTween(
      begin: AppColors.cSecond,
      end: AppColors.cMain,
    ).animate(_controller)..addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    return TextButton(
      onPressed: widget.onClick,
      style: TextButton.styleFrom(
        backgroundColor: _btnBgColorAnim.value ?? AppColors.cMain,
        foregroundColor: _btnForeColorAnim.value ?? AppColors.cSecond,
        padding: EdgeInsets.symmetric(vertical: 14.5, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          side: BorderSide.none,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: _textColorAnim.value,
              fontSize: 14,
              fontWeight: FontWeight.w900,
            ),
          ),
          AnimatedOpacity(
            opacity: widget.selected ? 1 : 0,
            duration: duration,
            child: Image.asset(
              widget.icon,
              width: 11,
              height: 11,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login();

  @override
  Widget build(BuildContext context) {
    return Column(
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
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide(color: AppColors.cMain, width: 1),
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
        Container(height: 1, decoration: BoxDecoration(color: AppColors.cMain)),
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
    );
  }
}
