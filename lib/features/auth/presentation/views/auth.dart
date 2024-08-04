import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/assets.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/core/utils/styles.dart';
import 'package:food/features/auth/presentation/widgets/login.dart';
import 'package:food/features/auth/presentation/widgets/sign_up.dart';
import 'package:food/generated/l10n.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  AuthState createState() => AuthState();
}

class AuthState extends State<Auth> {
  bool _isTextFieldFocused = false;

  void _onFocusChange(bool hasFocus) {
    setState(() {
      _isTextFieldFocused = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              height: _isTextFieldFocused ? 80.h : 280.h,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(32),
                  bottomStart: Radius.circular(32),
                ),
              ),
              child: Stack(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _isTextFieldFocused ? 0.0 : 1.0,
                    child: Center(
                      child: Image.asset(AssetsData.logo),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TabBar(
                      indicatorPadding: EdgeInsetsDirectional.only(
                        start: 30.w,
                        end: 30.w,
                      ),
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicatorColor: kPrimaryColor,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            S.of(context).logIn,
                            style: Styles.textStyle17,
                          ),
                        ),
                        Tab(
                          child: Text(
                            S.of(context).signUp,
                            style: Styles.textStyle17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Login(
                    onFocusChange: _onFocusChange,
                  ),
                  SignUp(
                    onFocusChange: _onFocusChange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
