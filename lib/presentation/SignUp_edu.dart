import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/helpers/publishAnnouncements.dart';
import 'package:uni_verse/presentation/home_page.dart';
import 'package:uni_verse/presentation/sign_in.dart';
import '../generated/l10n.dart';
import 'common/Colored_check_box.dart';
import 'common/line_divider.dart';
import 'common/resizable_button.dart';
import 'common/rounded_password_text_form_field.dart';
import 'common/rounded_text_form_field.dart';
import 'common/underlined_text_button.dart';
import 'helpers/validation_functions.dart';
import 'home_page.dart';

class SignUpEdu extends StatefulWidget {
  static String route = "CreateAccount";

  const SignUpEdu({Key? key}) : super(key: key);

  @override
  State<SignUpEdu> createState() => _SignUpEduState();
}

class _SignUpEduState extends State<SignUpEdu> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(S.of(context).signUp,
                  style: TextStyle(
                      color: const Color(0xFF000000),
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge?.fontSize)),
              Text(
                S.of(context).newAccountDescription,
                textAlign: TextAlign.center,
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  RoundedTextFormField(
                    controller: name,
                    label: S.of(context).name,
                    hintText: "Jane doe",
                    validator: (val) {
                      if (val!.isEmpty) return "please fill your name";
                      return null;
                    },
                    onChanged: (value) {
                      //context.read<CreateAccountProvider>().setName(value);
                    },
                  ),
                  RoundedTextFormField(
                    controller: emailAddress,
                    label: S.of(context).email,
                    hintText: "example@gmail.com",
                    validator: (val) {
                      if (!Validation.isEmail(val!)) {
                        return S.of(context).emailWarning;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //context.read<CreateAccountProvider>().setEmail(value);
                    },
                  ),
                  RoundedPasswordTextFormField(
                    controller: password,
                    label: S.of(context).password,
                    validator: (val) {
                      if (!Validation.isPassword(val!)) {
                        return S.of(context).passwordWarning;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      /* context
                            .read<CreateAccountProvider>()
                            .setPassword(value);*/
                    },
                  ),
                ]),
              ),
              Row(
                children: [
                  const ColoredCheckBox(),
                  Text(S.of(context).agreeWith),
                  UnderlinedTextButton(
                      text: S.of(context).termsConditions, onPressed: () {})
                ],
              ),
              ResizableButton(
                  text: S.of(context).signUp,
                  width: 100.w,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Publish_Announcements()),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LineDivider(),
                  Text(
                    S.of(context).socialsSignIn,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const LineDivider(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SignInButton.mini(
                  buttonType: ButtonType.apple,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  btnColor: Colors.white,
                  onPressed: () {},
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).haveAccount),
                  UnderlinedTextButton(
                      text: S.of(context).signIn,
                      onPressed: () {
                        Navigator.pushNamed(context, SignIn.route);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void createAccount() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress.text,
        password: password.text,
      );
      if (credential.user != null) {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("The password provided is too weak."),
          duration: Duration(seconds: 2),
        ));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("The account already exists for that email."),
          duration: Duration(seconds: 2),
        ));
      }
    }
  }
}
