import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/ui/screen/drawer_page.dart';
import 'package:flutter_wallet/ui/screen/login_page.dart';
import 'package:flutter_wallet/ui/screen/sign_up.dart';
import 'package:flutter_wallet/util/file_path.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static DateTime now = DateTime.now();
  String formattedTime = DateFormat.jm().format(now);
  String formattedDate = DateFormat('MMM d, yyyy | EEEEEE').format(now);
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
              _topContent(),
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
      children: <Widget>[
        // const SizedBox(
        //   height: 1,
        // ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 100,
            ),
            Text(
              formattedTime,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(cloud),
            const SizedBox(
              width: 8,
            ),
            Text(
              '34° C',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          formattedDate,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
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
              height: 100,
              child: Image.asset('assets/images/wallet.png')),
          Text(
            'PraWallet',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          )
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.button,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            _navigateToSignUp(context);
          },
          child: Text(
            'Create an Account',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )
      ],
    );
  }

  void _navigateToSignUp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  // void _navigateToLogin(BuildContext context) {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => LoginPage()));
  // }

}
