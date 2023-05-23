import 'package:todoflutter/info.dart';
import 'package:flutter/material.dart';


import 'package:todoflutter/password/pages/home_page.dart';
import 'package:todoflutter/registeration_screen.dart';
import 'package:todoflutter/todo/todo_home.dart';
class home extends StatelessWidget {

  final  String name ;
  final String email;
  final String city;
  final String age;
  final String hight;
  final String wight;
  final String phone;
  final String password;

  home({
    required this.name,
    required this.age,
    required this.hight,
    required this.wight,
    required this.phone,
    required this.email,
    required this.password,
    required this.city,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
            Icons.home
        ),
        title: Center(child: Text("Home")),

      ),
body:
    Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0 ,
          ),
           Expanded(
             child: Container(
                  decoration: BoxDecoration(

                    color:Colors.teal[400] ,
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              todo(
                              ),
                        ),
                      );
                    },

                    height: 50.0,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.task_alt,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'ToDo List',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                    ),
                  ),
                ),
           ),
          SizedBox(
            height: 15.0 ,
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(

                color:Colors.teal[400] ,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  30.0,
                ),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        HomePage(),
                      ),
                    );
                  },
                  height: 50.0,
                  child:  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Passords saver',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),

              ),
            ),
          ),
          SizedBox(
            height: 30.0 ,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(

                color:Colors.teal[400] ,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  30.0,
                ),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            info( name:name ,
                              email: email,
                              phone:phone ,
                              age:age ,
                              hight: hight,
                              wight:wight ,
                              city:city ,
                              password: password,),


                      ),
                    );
                  },
                  height: 50.0,
                  child:  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'My info',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),

              ),
            ),
          ),



        ],
      ),
    ),

    );
  }
}
