import 'dart:async';
import 'package:passcode_screen/keyboard.dart';

import '../../../color.dart';

import 'package:flutter/material.dart';
import 'package:passcode_screen/circle.dart';

import 'package:passcode_screen/passcode_screen.dart';

class email_5 extends StatefulWidget {
  const email_5({super.key});

  @override
  State<email_5> createState() => _email_5State();
}

class _email_5State extends State<email_5> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  _onPasscodeEntered(String enteredPasscode) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.003,
          // ),
          // Container(
          //   //height: MediaQuery.of(context).size.height * 0.2,
          //   alignment: AlignmentDirectional.topStart,
          //   margin: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.05, top: 10),
          //   child: InkWell(
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //       child: Image.asset('images/mvc/coloredbackarrow.png')),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.87,
            child: PasscodeScreen(
              backgroundColor: Colors.white,
              circleUIConfig: CircleUIConfig(
                  borderColor: otbcolor, fillColor: otbcolor, circleSize: 24),
              keyboardUIConfig: KeyboardUIConfig(
                  digitTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              title: Text(
                'Enter Passcode',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
              passwordEnteredCallback: _onPasscodeEntered,
              cancelButton: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              deleteButton: Text('Delete'),
              shouldTriggerVerification: _verificationNotifier.stream,
            ),
          ),
          Center(
            child: TextButton(
              child: Text('Forgot Passcode?'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
