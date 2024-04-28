import 'package:clothes_app/users/authentification/SignUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var formkey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var isObscure=true.obs;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'images/Login.jpg', // Replace 'background_image.jpg' with your image file path
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Your login content
          LayoutBuilder(
            builder:(context,cons){
              return ConstrainedBox(
                constraints: BoxConstraints(
                ),
                child: SingleChildScrollView(
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 130.0),
                        child: Text('WELCOM TO ONLINE SHOP',style:TextStyle(color: Colors.white, fontSize: 28,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(60)
                            ),
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30,30,30,8.0),
                            child: Column(
                              children: [
                                Form(
                                   key:formkey,
                                   child: Column(
                                    children: [
                                      //email
                                      TextFormField(
                                        controller: emailController,
                                        validator:(val)=> val=="" ? "plaese enter your email" : null,
                                        decoration: InputDecoration(
                                          prefixIcon:const Icon(
                                            Icons.email,
                                            color: Colors.black,
                                          ),
                                          hintText: "Email.....",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 6,
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                       Obx(
                                        ()=>TextFormField(
                                        controller: passwordController,
                                        obscureText: isObscure.value,
                                        validator:(val)=> val=="" ? "plaese enter your password" : null,
                                        decoration: InputDecoration(
                                          prefixIcon:const Icon(
                                            Icons.vpn_key_sharp,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: Obx(
                                            ()=>GestureDetector(
                                              onTap: (){
                                               isObscure.value= !isObscure.value;
                                              },
                                              child: Icon(
                                                isObscure.value ? Icons.visibility_off : Icons.visibility,
                                                color:Colors.black,
                                              ), 
                                              
                                            )
                                          ),
                                          hintText: "Password.....",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide:const BorderSide(
                                              color: Colors.black,
                                            )
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 6,
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      ),
                                      
                                       ),
                                       const SizedBox(height: 10,),
                                       Material(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30),
                                        child: InkWell(
                                          onTap: (){
                            
                                          },
                                          borderRadius: BorderRadius.circular(30),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 28
                                          ),
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                          ),
                                        ),
                                       )
                                    ],
                                   ),
                                 ),
                                 SizedBox(height: 16,),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Dont have an acount?',
                                      style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),
                                    ),
                                    TextButton(
                                     onPressed: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context)=>SignUpScreen())
                                      );
                                     },
                                     child: Text("Register Here",
                                     style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                     ),))
                                  ],
                                 ),
                                 Text('OR',style: TextStyle(fontSize: 16),),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Are you an admin?',
                                      style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),
                                    ),
                                    TextButton(
                                     onPressed: (){},
                                     child: Text("Click Here",
                                     style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                     ),))
                                  ],
                                 )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ),
                );
            } ),
        ],
      ),
    );
  }
}
