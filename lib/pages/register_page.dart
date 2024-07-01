// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';
import 'package:food_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();

   // register method
   void register() async {
    // get auth service
    final authService = AuthService();

    // check if passwords match => create user
    if(passwordController.text == confirmPasswordController.text){
      // try creating user
      try{
        await authService.signUpWithEmailPassword(emailController.text, passwordController.text,);
      }

      // display any errors
      catch(e){
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString(),
            ),
          ),
          );
      }
    }

    // if password doesn't match => show error
    else{
      showDialog(
          context: context, 
          builder: (context) => const AlertDialog(
            title: Text("Passwords don't match!"
            ),
          ),
          );
    }


   // fill out authentication here... 

  //  showDialog(
  //   context: context,
  //   builder: (context) => AlertDialog(
  //     backgroundColor: Theme.of(context).colorScheme.background,
  //     title: const Text("User wants to register."),
  //   ),
  //  );
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

            // message, app slogan
            Text("Lets create an Account for you",
            style:TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
            const SizedBox(
              height: 25,
            ),

            //email textfield
           MyTextField(
            hintText: "Email", 
            obscureText: false, 
            controller: emailController,
           ),

           const SizedBox(height: 10),
            // password textfield
            MyTextField(
            hintText: "Password", 
            obscureText: true, 
            controller: passwordController,
           ),

           const SizedBox(height: 10),
            
            //confirm password textfield
            MyTextField(hintText: "confirm password", obscureText: true, controller: confirmPasswordController,
            ),

           const SizedBox(height: 25),

           // sign in button
            MyButton(
            text: "Sign Up",
            onTap: register,
            ),

            const SizedBox(height: 25),

            // already have an account? Login here

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now", 
                    style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            )
           ],
        ),
      )
    );
  }
}