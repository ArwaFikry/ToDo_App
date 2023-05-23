import 'package:todoflutter/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:todoflutter/registeration_screen.dart';
class login extends StatelessWidget {

  final  String name ;
  final String email;
  final String city;
  final String age;
  final String hight;
  final String wight;
  final String phone;
  final String password;

  login({
    required this.name,
    required this.age,
    required this.hight,
    required this.wight,
    required this.phone,
    required this.email,
    required this.password,
    required this.city,

  });

  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.login
        ),
        title: Center(child: Text("Login")),

      ),
      body:Container(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 30.0,right: 30.0),
          child:
          ListView(
            children: [

               Form(
                 key:formKey ,
                 child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 80.0,
                          child:
                          Icon(
                            Icons.person,
                            size: 95.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80.0 ,
                      ),
                      TextFormField(
                        controller: emailController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.emailAddress,
                       validator: (value){
                          if(value!.isEmpty)
                            {
                              return"complete this field please";
                            }
                          return null;
                       },
                        decoration: InputDecoration(

                          labelText: 'E-mail',
                          hintText: 'Enter e-mail',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0 ,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'password',
                          hintText: 'enter password',
                          prefixIcon: Icon(
                            Icons.lock_open,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),

                          ),


                        ),
                      ),
                      SizedBox(
                        height: 20.0 ,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.teal,
                        child: MaterialButton(

                            onPressed: (){
                              print(emailController.text);
                              print(passwordController.text);
                              if(formKey.currentState!.validate()) {
                                print(emailController.text);
                                print(passwordController.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) =>
                                    home(name:name ,
                                      email: email,
                                      phone:phone ,
                                      age:age ,
                                      hight: hight,
                                      wight:wight ,
                                      city:city ,
                                      password: password,),


                              ),);
                              }
                            },
                            child: Text(
                             "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),

                            ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0 ,
                      ),

                    ],
                  ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
