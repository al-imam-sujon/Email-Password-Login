import 'package:email_password_login/screens/dashbord.dart';
import 'package:email_password_login/service/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailConrdoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/greenTree.jpg'),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'Email',
                        onSaved: (value){
                          emailConrdoller.text=value!;
                        },
                        prefixicon: Icon(Icons.person_outline),
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ('Email must not be empty');
                          } else if (!value.contains("@gmail.com")) {
                            return ('Invalided email');
                          }
                          return null;
                        },
                        controller: emailConrdoller,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'Password',
                        onSaved: (value){
                          passwordController.text=value!;
                        },
                        prefixicon: Icon(Icons.email_outlined),
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return " Enter your password";
                          } else if (value.length < 6) {
                            return "enter 6 charter";
                          }
                          return null;
                        },
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            print('login');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DashBord()));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationPage()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

//same code here

// Email_Field
// final emailField = TextFormField(
//   autofocus: false,
//   controller: emailConrdoller,
//   keyboardType: TextInputType.emailAddress,
//   onSaved: (value){
//     emailConrdoller.text='value';
//   },
//   validator: (value){
//     if(value==null || value.isEmpty){
//       print("Email field must not be empty");
//     }
//     return null;
//   },
//   textInputAction: TextInputAction.next,
//   decoration: InputDecoration(
//     prefixIcon: Icon(Icons.email_sharp),
//     hintText: 'Email',
//     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(25.0)
//     ),
//   ),
// );

// password_Field.

// final passwordField = TextFormField(
//   autofocus: false,
//   controller: passwordController,
//   obscureText: true,
//   obscuringCharacter: '*',
//   maxLength: 8,
//   onSaved: (value){
//     passwordController.text='value';
//   },
//   textInputAction: TextInputAction.done,
//   decoration: InputDecoration(
//     prefixIcon: Icon(Icons.lock_open),
//     hintText: 'Password',
//     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(25.0)
//     ),
//   ),
// );

// Login_Button
// final loginButton = Material(
//   elevation: 10,
//   borderRadius: BorderRadius.circular(15.0),
//   color: Colors.lightBlue,
//   child: MaterialButton(
//     minWidth: MediaQuery.of(context).size.width,
//     padding: EdgeInsets.fromLTRB(25, 10, 20, 10),
//     onPressed: (){
//       if(_formkey.currentState.validate()){
//         return ("validate");
//       }
//     },
//     child: Text('Login',style: TextStyle(fontSize: 30,color: Colors.white,
//         fontWeight: FontWeight.bold),
//       textAlign: TextAlign.center,),
//   ),
// );

//
// //
// // customTextField(String hinttext,bool obcourse, FormFieldValidator<String>? validator,TextEditingController controller){
// //   return TextFormField(
// //     obscureText:obcourse,
// //     controller: controller,
// //     validator: validator,
// //     decoration: InputDecoration(
// //       hintText:hinttext,
// //       hintStyle: TextStyle(fontSize: 15,color: Colors.black),
// //       border: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
// //       borderSide: BorderSide(
// //         color: Color(0xff4be583),
// //       )
// //       )
// //     ),
// //   );
// //
// }
