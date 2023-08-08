import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/utils.dart';
import '../../res/components/round_button.dart';
import '../../view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginControl = Get.put(LoginViewModel());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login_screen".tr),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: loginControl.emailController.value,
                  focusNode: loginControl.emailNode.value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "email_hint".tr,
                    labelText: "email_hint".tr,
                  ),
                  onEditingComplete: () {
                    Utils.fieldFocusChange(
                        context,
                        loginControl.emailNode.value,
                        loginControl.passwordNode.value);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: loginControl.passwordController.value,
                  focusNode: loginControl.passwordNode.value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "password_hint".tr,
                    labelText: "password_hint".tr,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundButton(
                  btnTitle: "login".tr,
                  onPress: () {},
                  width: Get.width,
                )
              ],
            ),
          )),
    );
  }
}
