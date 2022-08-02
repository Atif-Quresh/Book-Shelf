import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:justtest/widgets/Dashboard/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // form key
  final _formKey = GlobalKey<FormState>();
   bool _isLoading = false;
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  // firebase
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    //Email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        obscureText: false,
        validator: (value) {
          if (value!.isEmpty) {
            return ('Please enter your Email');
          }
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ), // OutlineInputBorder
        ));
    //Password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        //validator
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ), // OutlineInputBorder
        )); // InputDecoration // TextFormField
    //Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromRGBO(2, 28, 88, 1),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(emailController.text, passwordController.text);
            //Navigator. pushReplacement (context, newRoute) ( context, MaterialPageRoute(builder: (context) => HomeScreen ()) ) ;
          },
          child: _isLoading
              ? CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold), // TextStyle
          )), // Text // MaterialButton
    ); // Material

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            //color: Colors.red,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 100,
                    child: Image.asset('assets/images/book_icon.png'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      'BookShelf',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: emailField,
                  ),
                  Container(padding: EdgeInsets.all(8), child: passwordField),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: loginButton,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account.?'),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 28, 28, 1),
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
    //Singn Function
  void signIn(String email, String password) async {
    print(email);
    if (_formKey.currentState!.validate()) {
      try {
         setState(() {
        _isLoading = true;
      });
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
              setState(() {
          _isLoading = false;
        }),
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage())),
                       
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
             setState(() {
          _isLoading = false;
        });
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
             setState(() {
          _isLoading = false;
        });
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
             setState(() {
          _isLoading = false;
        });
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
             setState(() {
          _isLoading = false;
        });
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
             setState(() {
          _isLoading = false;
        });
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
             setState(() {
          _isLoading = false;
        });
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
         setState(() {
          _isLoading = false;
        });
        print(error.code);
      }
    }
  }
}
