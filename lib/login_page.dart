import 'package:bca_notes_sem_one/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //@override
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    // if (_formKey.currentState.validate()) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      }); //changeButton = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/undraw_welcome_cats_thqn.png"),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Top to nhi... par haan...' +
                      '\n' +
                      ' achhe numbero se pass ho jaoge',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter your unique username",
                          labelText: "Your Username",
                        ),
                        validator: (value) {
                          if (value != null) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "abcd@1234 bla bla",
                          labelText: "enter your password",
                        ),
                        validator: (value) {
                          if (value != null) {
                            return 'Please enter a password';
                          } else if (value!.length < 8) {
                            return "password should be atleast of 8 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ElevatedButton(
                      //   child: Text("let me in"),
                      //   style: TextButton.styleFrom(minimumSize: Size(190, 40)),
                      //   onPressed: () {
                      //     ButtonStyle(
                      //         backgroundColor: MaterialStateProperty.all<Color>(
                      //             Colors.deepPurple));
                      //     //print('rajat');
                      //     //Navigator.defaultRouteName;
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                      Material(
                        // color: Colors.cyan,
                        color: changeButton ? Colors.black : Colors.cyan,
                        borderRadius: BorderRadius.circular(19),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Text(
                                    'Hold Up!!!',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : Text(
                                    'Take Me In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: changeButton ? Colors.black : Colors.cyan,
                            //   borderRadius: BorderRadius.circular(19),
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'You can do it... $name' +
                            '\n' +
                            'mujhe pata hai tum achhe number laoge',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
