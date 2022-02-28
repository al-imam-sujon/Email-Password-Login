
import 'package:email_password_login/service/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dashbord.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController secondnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  Widget build(BuildContext context) {




    // final firstnameField = TextFormField(
    //   autofocus: false,
    //   controller: firstnameController,
    //   keyboardType: TextInputType.name,
    //   onSaved: (value){
    //     passwordController.text='value';
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.person_outline),
    //     hintText: 'First Name',
    //     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(25.0)
    //     ),
    //   ),
    // );
    // final secondnameField = TextFormField(
    //   autofocus: false,
    //   controller: secondnameController,
    //   keyboardType: TextInputType.name,
    //   onSaved: (value){
    //     passwordController.text='value';
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.person_outline),
    //     hintText: 'Second Name',
    //     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(25.0)
    //     ),
    //   ),
    // );
    // final emailField = TextFormField(
    //   autofocus: false,
    //   controller: emailController,
    //   keyboardType: TextInputType.emailAddress,
    //   onSaved: (value){
    //     passwordController.text='value';
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.email),
    //     hintText: 'Email',
    //     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(25.0)
    //     ),
    //   ),
    // );
    // final passwordField = TextFormField(
    //   autofocus: false,
    //   obscureText: true,
    //   obscuringCharacter: '*',
    //   controller: passwordController,
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
    // final confirmpasswordField = TextFormField(
    //   autofocus: false,
    //   controller: confirmpasswordController,
    //   obscureText: true,
    //   obscuringCharacter: '*',
    //   onSaved: (value){
    //     passwordController.text='value';
    //   },
    //   textInputAction: TextInputAction.done,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.lock_open),
    //     hintText: 'ConfirmPassword',
    //     contentPadding: EdgeInsets.fromLTRB(25, 10, 20, 10),
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(25.0)
    //     ),
    //   ),
    // );
    // final loginButtonField = Material(
    //   elevation: 10,
    //   borderRadius: BorderRadius.circular(15.0),
    //   color: Colors.lightBlue,
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(25, 10, 20, 10),
    //     onPressed: (){
    //       Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBord()));
    //     },
    //     child: Text('Sign Up',style: TextStyle(fontSize: 30,color: Colors.white,
    //         fontWeight: FontWeight.bold),
    //       textAlign: TextAlign.center,),
    //   ),
    // );

    // Scaffold

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
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
                      Image.asset('assets/green_bangla.png'),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'First Name',
                        onSaved: (value){
                          firstnameController.text=value!;
                        },
                        prefixicon: Icon(Icons.person_outline),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        controller: firstnameController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'Second Name',
                        onSaved: (value){
                          secondnameController.text=value!;
                        },
                        prefixicon: Icon(Icons.person_outline),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        controller: secondnameController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'Email',
                        onSaved: (value){
                          emailController.text=value!;
                        },
                        prefixicon: Icon(Icons.email_outlined),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return 'Email must not be null';
                          }
                          else if ( !value.contains('@gmail.com')){
                            return "Invalided Email";
                          }
                          else{
                            return null;
                          }
                        },
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'Password',
                        obscureText: true,
                        obscuringCharacter: "*",
                        onSaved: (value){
                          passwordController.text=value!;
                        },
                        prefixicon: Icon(Icons.lock_open),
                        sufixicon: Icon(Icons.remove_red_eye),
                        textInputAction: TextInputAction.next,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return 'Enter your password';
                          }
                          else if(value.length < 6){
                            return 'Need 6 charter';
                          }
                          else{
                            return null;
                          }
                        },
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormTextField(
                        hintText: 'ConfirmPassword',
                        prefixicon: Icon(Icons.lock_open),
                        sufixicon: Icon(Icons.remove_red_eye),
                        obscuringCharacter: "*",
                        onSaved: (value){
                          confirmpasswordController.text=value!;
                        },
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return 'Enter Confirm password';
                          }
                          else if(value.length < 6){
                            return 'must be need  6 charter';
                          }
                          else{
                            return null;
                          }
                        },
                        controller: confirmpasswordController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(_formkey.currentState!.validate()){
                            print('Sign Up');
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashBord()));
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
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
