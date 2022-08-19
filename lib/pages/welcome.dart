
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Welcome",style:TextStyle(fontSize: 25)),
          backgroundColor:Color.fromARGB(255, 91, 16, 104) ,
          centerTitle: true,
        ),
        body: Container(
          child: Column(children: [
                ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context, '/login');

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all( Color.fromARGB(255, 91, 16, 104)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 19),
                ),
              ),
              SizedBox(height:20),
              ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context, '/signup');

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all( Color.fromARGB(255, 91, 16, 104)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
                ),
                child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            
          ],
           mainAxisAlignment: MainAxisAlignment.center,
           

          ),
          width: double.infinity,
        )

    );
  }
}