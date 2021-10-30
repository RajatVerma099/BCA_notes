import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          child: Column(
        children: [
          Image.asset("assets/images/undraw_welcome_cats_thqn.png"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Top to nhi... par haan... achhe numbero se pass ho jaoge :)',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your unique username",
                    labelText: "Your Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "abcd@1234 bla bla",
                    labelText: "enter your password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("let me in"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print('rajat');
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
