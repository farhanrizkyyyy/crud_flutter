import 'package:crud_flutter/model/user.dart';
import 'package:crud_flutter/ui/listMhs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          margin: EdgeInsets.symmetric(horizontal: 80),
          padding: EdgeInsets.all(30),
          // color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Email"),
                controller: username,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
                controller: password,
              ),
              ElevatedButton(
                onPressed: () {
                  if (username.text == "farhan" && password.text == "farhan") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListMhs(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Container(
                          width: widthScreen / 3,
                          height: heightScreen / 10,
                          child: Scaffold(
                            body: Center(
                              child: Text("Username atau password salah.",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
