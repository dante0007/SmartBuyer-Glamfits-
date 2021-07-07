import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartbuyer/Screens/Home_Screen.dart';
import 'package:smartbuyer/Screens/Otp_Screen.dart';
import 'package:smartbuyer/widgets/botttombarwidget.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  String? verificationId;

  bool showLoading = false;
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: showLoading
            ? const Center(child: CircularProgressIndicator())
            : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                ? getLoginScreen(context)
                : getOtpScreen(context),
      ),
    );
  }

  getLoginScreen(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      // height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    height: 190,
                    width: 300,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/welcome1.png"),
                  ),
                ],
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Center(
                child: TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
              ),
            ),
          ),
          Spacer(),
          MaterialButton(
            height: 50,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () async{
              await _auth.verifyPhoneNumber(
                phoneNumber: "+91${_phoneNumberController.text}",
                verificationCompleted: (phoneAuthCredential) async {
                  setState(() {
                    showLoading = false;
                  });
                 signInWithAuthCredential(phoneAuthCredential);
                },
                verificationFailed: (verificationFailed) async {
                  setState(() {
                    showLoading = false;
                  });
                  _scaffoldKey.currentState!.showSnackBar(
                      SnackBar(content: Text(verificationFailed.message!)));
                },
                codeSent: (verificationId, resendingToken) async {
                  setState(() {
                    showLoading = false;
                    currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                    this.verificationId = verificationId;
                  });
                },
                codeAutoRetrievalTimeout: (String verificationId) async {
                  setState(() {
                    this.verificationId = verificationId;
                  });
                },
              );
            },
            child: const Text(
              'VERIFY OTP',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            color: Colors.black54,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

  getOtpScreen(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Enter Verification code we\'ve sent on given number.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: _otpController,
              maxLength: 6,
              keyboardType: TextInputType.number,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'ENTER VERIFICATION CODE',
              ),
            ),
          ),
          const Spacer(),
          MaterialButton(
            height: 50,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
              AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
                  verificationId: this.verificationId,
                  smsCode: _otpController.text);
              signInWithAuthCredential(phoneAuthCredential);
            },
            child: const Text(
              'Continue',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            color: Colors.black54,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

  void signInWithAuthCredential(
      AuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }
}

String? validateMobile(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length < 10) {
    return 'Please enter 10 digits number.';
  } else if (!regExp.hasMatch(value)) {
    return 'Field Must be digits.';
  }
  return null;
}
