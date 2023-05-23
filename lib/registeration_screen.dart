import 'package:todoflutter/home_screen.dart';
import 'package:todoflutter/info.dart';
import 'package:todoflutter/login_screen.dart';
import 'package:flutter/material.dart';
class registration extends StatelessWidget {

 var namecontroller=TextEditingController();
 var emailController =TextEditingController();
 var phoneController =TextEditingController();
 var ageController =TextEditingController();
 var hightController =TextEditingController();
 var wightController =TextEditingController();
 var citycontroller=TextEditingController();
 var passwordController =TextEditingController();
 var formKey = GlobalKey<FormState>();


 @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
            Icons.app_registration
        ),
        title: Center(child: Text("My info ")),

      ),
      body:Container(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 10.0,right: 30.0),
          child:
          ListView(
            children: [
               Form(
                 key:formKey ,

                 child: Column(
                    children: [

                      SizedBox(
                        height: 40.0 ,
                      ),
                      TextFormField(
                        controller: namecontroller,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.name,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "compled yhis field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'Name',
                          hintText: 'Enter your name',
                          prefixIcon: Icon(
                            Icons.person,
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
                        controller: emailController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
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
                        controller: phoneController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.phone,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'Phone',
                          hintText: 'Enter phone',
                          prefixIcon: Icon(
                            Icons.phone,
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
                        controller: ageController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.number,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'Age',
                          hintText: 'Enter Your Age',
                          prefixIcon: Icon(
                            Icons.numbers,
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
                        controller: hightController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.number,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'Hight',
                          hintText: 'Enter Your hight',
                          prefixIcon: Icon(
                            Icons.numbers,
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
                        controller: wightController,
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        keyboardType: TextInputType.number,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'wight',
                          hintText: 'Enter Your wight',
                          prefixIcon: Icon(
                            Icons.numbers,
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
                        controller: citycontroller,
                        keyboardType: TextInputType.streetAddress,
                        obscureText: true,
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return "complete this field please";
                          }
                          return null;
                        },
                        decoration: InputDecoration(

                          labelText: 'City',
                          hintText: 'enter city',
                          prefixIcon: Icon(
                            Icons.location_city,
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

                      SizedBox(
                        height: 20.0 ,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.teal,
                        child: MaterialButton(

                          onPressed: (){
                            if(formKey.currentState!.validate()) {
                              print(emailController.text);
                              print(passwordController.text);
                            }
                            print(namecontroller.text);
                            print(emailController.text);
                            print(phoneController.text);
                            print(ageController.text);
                            print(hightController.text);
                            print(wightController.text);
                            print(citycontroller.text);
                            print(passwordController.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    login( name:namecontroller.text ,
                                      email: emailController.text,
                                      phone:phoneController.text ,
                                      age:ageController.text ,
                                      hight: hightController.text,
                                      wight:wightController.text ,
                                      city:citycontroller.text ,
                                      password: passwordController.text,),


                              ),
                            );

                          },
                          child: Text(
                            "Enter",
                            style: TextStyle(
                              color: Colors.white,
                            ),

                          ),
                        ),
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
