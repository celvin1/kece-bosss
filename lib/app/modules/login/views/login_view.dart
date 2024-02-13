import 'package:belajar_getx/app/helpers/size_helper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8, // Increase the elevation for a shadow effect
                margin: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    // key: _formKey,
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          // controller: emailController,
                          onChanged: controller.onEmailChanged,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            prefixIcon: Icon(Icons.email), // Added icon
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          // controller: passwordController,
                          onChanged: controller.onPasswordChanged,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Masukan Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Tolong Masukan Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed("/register");
                          },
                          child: Text(
                            "Belum punya akun? Daftar disini",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: displayHeight(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Text("Login"),
                            onPressed: () {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.login();
                                }
                            }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}