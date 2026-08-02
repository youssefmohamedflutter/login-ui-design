import 'package:flutter/material.dart';
import 'package:login_design/widget/font_style.dart';
import 'package:login_design/widget/icon_Style.dart';
import 'package:login_design/widget/style_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconStyle(icon: Icons.menu),
        ),
        title: StyleText(text: 'Login', fontSize: 25, textColor: Colors.white),
        actions: [
          IconStyle(icon: Icons.notifications),
          IconStyle(icon: Icons.search),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyleText(text: 'Login', fontSize: 50, textColor: Colors.blue),
                SizedBox(height: 15),
                StyleTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  onFilledSubmitted: (value) {
                    debugPrint(value);
                  },
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  isPassword: false,
                  prefixIcon: Icons.email_outlined,
                  labelTex: 'Enter Email',
                ),
                SizedBox(height: 10),
                StyleTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  onFilledSubmitted: (value) {
                    debugPrint(value);
                  },
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  isPassword: true,
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  labelTex: 'Enter Password',
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: StyleText(
                      text: 'Login',
                      fontSize: 25,
                      textColor: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StyleText(
                      text: 'Don\'t Have An Account?',
                      fontSize: 15,
                      textColor: Colors.blue,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      onPressed: () {},
                      child: StyleText(
                        text: 'Register',
                        fontSize: 14,
                        textColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
