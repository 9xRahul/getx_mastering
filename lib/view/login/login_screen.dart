import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/utils/utils.dart';
import 'package:learning_getx/view_model/services/controller/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginViewModel = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("login".tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: .symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar("emailhint".tr, "email".tr);
                        return '';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                        context,
                        loginViewModel.emailFocusNode.value,
                        loginViewModel.passwordFocusNode.value,
                      );
                    },
                    controller: loginViewModel.emailController.value,
                    focusNode: loginViewModel.emailFocusNode.value,
                    decoration: InputDecoration(
                      hint: Text("emailhint".tr),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "#",
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar("passwordhint".tr, "password".tr);
                      }
                    },
                    onFieldSubmitted: (value) {
                      // Utils.fieldFocusChange(
                      //   context,
                      //   loginViewModel.emailFocusNode.value,
                      //   loginViewModel.passwordFocusNode.value,
                      // );
                    },
                    controller: loginViewModel.passwordController.value,
                    focusNode: loginViewModel.passwordFocusNode.value,

                    decoration: InputDecoration(
                      hint: Text("passwordhint".tr),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
            Utils().roundButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              title: "Login".tr,
              height: 40,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
