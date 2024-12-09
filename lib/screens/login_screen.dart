import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

import '../../components/custom_button.dart';
import 'home_screen.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // When user taps anywhere on the screen, keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/splash.png',
                      height: 150, width: 150),
                  const SizedBox(height: kDefaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w200)),
                      Text('Student',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding / 6),
                  Text('Sign in to continue',
                      style: Theme.of(context).textTheme.titleSmall)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          emailField(),
                          sizedBox,
                          passwordField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                // go to next activity
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_ios_outlined,
                          ),
                          sizedBox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField emailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
          color: kTextBlackColor, fontSize: 17, fontWeight: FontWeight.w500),
      decoration: const InputDecoration(
        labelText: 'Mobile Number / Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
    );
  }

  TextFormField passwordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
          color: kTextBlackColor, fontSize: 17, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(_passwordVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_off_outlined),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "Must be more than 5 characters";
        }
        return null;
      },
    );
  }
}
