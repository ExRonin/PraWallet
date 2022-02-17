import 'package:flutter/material.dart';
import 'package:flutter_wallet/ui/screen/drawer_page.dart';
import 'package:flutter_wallet/ui/screen/sign_up.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     Expanded(
        //       flex: 1,
        //       child: Align(
        //         alignment: Alignment.centerLeft,
        //         // child: SvgPicture.asset(mainBanner),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // _topContent(),
              _centerContent(),
              _bottomContent()
            ],
          ),
        ),
      ),
      //       ],
      //     ),
      //   ),
    );
  }

  Widget _topContent() {
    return Column(
      children: <Widget>[],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              width: 250,
              height: 90,
              child: Image.asset('assets/images/wallet.png')),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            child: Text(
              'Login Wallet',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'valid email abc@gmail.com'),
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  EmailValidator(errorText: "Enter valid email id"),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  MinLengthValidator(6,
                      errorText: "Password should be atleast 6 characters"),
                  MaxLengthValidator(15,
                      errorText:
                          "Password should not be greater than 15 characters")
                ])),
          ),

          // Align(
          //   alignment: Alignment.center,
          //   child: Column(
          //     children: [
          //       Text(
          //         'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
          //         style: Theme.of(context).textTheme.bodyText1,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Column(
      children: <Widget>[
        MaterialButton(
          elevation: 0,
          color: const Color(0xFFFFAC30),
          height: 50,
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const DrawerPage(),
              ),
            );
          },
          child: Text(
            'Log In',
            style: Theme.of(context).textTheme.button,
          ),
        ),
        const SizedBox(
          height: 56,
        ),
        // GestureDetector(
        //   onTap: () {
        //     _navigateToSignUp(context);
        //   },
        //   child: Text(
        //     'Create an Account',
        //     style: Theme.of(context).textTheme.bodyText2,
        //   ),
        // )
      ],
    );
  }

  void _navigateToSignUp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
  }
}
