import 'package:flutter/material.dart';
import 'package:todoflutter/registeration_screen.dart';
class info extends StatelessWidget {
  final  String name ;
  final String email;
  final String city;
  final String age;
  final String hight;
  final String wight;
  final String phone;
  final String password;

  info({
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
        title: Center(child: Text("My info")),

      ),
      body:
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(
              height: 30.0 ,
            ),
            Container(
              decoration: BoxDecoration(

                color:Colors.teal[400] ,

                borderRadius: BorderRadius.circular(
                  00.0,
                ),

              ),
              child:

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.0 ,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                decoration: BoxDecoration(

                  color:Colors.teal[400] ,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.5),
                      spreadRadius: 8,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),

                ),

                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20.0 ,
                            ),

                            Text(
                              'My name is $name',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,

                              ),

                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: [
                            Icon(
                              color: Colors.white,
                              Icons.email,
                            ),
                            SizedBox(
                              height: 20.0 ,
                            ),
                            Text(
                              'My email is $email',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,

                              ),

                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20.0 ,
                          ),
                          Text(
                            'My phone is $phone',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.numbers,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20.0 ,
                          ),
                          Text(
                            'I am $age years old',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.numbers,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20.0 ,
                          ),
                          Text(
                            'My hight is $hight',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      Row(
                        children: [
                          Icon(
                            color: Colors.white,
                            Icons.numbers,
                          ),
                          SizedBox(
                            height: 20.0 ,
                          ),
                          Text(
                            'My whight is $wight',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0 ,
                      ),
                      Row(
                        children: [
                          Icon(
                            color: Colors.white,
                            Icons.numbers,
                          ),
                          SizedBox(
                            height: 20.0 ,
                          ),
                          Text(
                            'I live in $city',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                        ],
                      ),

                    ],
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
