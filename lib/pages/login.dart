// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {

           Navigator.pop(context);
           //Navigator.pushNamed(context, '/');

        },
        child:Icon(Icons.home),
        backgroundColor: Color.fromARGB(255, 91, 16, 104,),),
            appBar: AppBar(
              title:Text("Login ",style:TextStyle(fontSize: 25)),
              backgroundColor:  Color.fromARGB(255, 91, 16, 104,),
              elevation: 25,
              centerTitle: true,
            ),
            body: Column(
              children:  [
                    Container(
                      child: const TextField(textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                            hintText: "Your Email",
                                            //labelText: "Email",
                                            //labelStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                                            prefixIcon: Icon(Icons.email,color: Color.fromARGB(255, 91, 16, 104),),
                                            //suffixIcon: Icon(Icons.visibility)
                                            //border: OutlineInputBorder()
                                            border: InputBorder.none,
                                ),
                                ),
                                margin: EdgeInsets.fromLTRB(60, 0, 60, 20),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            color:Colors.purple[100],
                                ),
                    ),
                    Container(
                      child: const TextField(textInputAction: TextInputAction.done,
                                obscureText: true,
                                decoration: InputDecoration(
                                            hintText: " Password",
                                            //labelText: "Email",
                                            labelStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                                            prefixIcon: Icon(Icons.lock_outline,color: Color.fromARGB(255, 91, 16, 104)),
                                            suffixIcon: Icon(Icons.visibility),
                                            border: InputBorder.none,

                                            //border: OutlineInputBorder()
                                ),
                                ),
                                 margin: EdgeInsets.fromLTRB(60, 0, 60, 20),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            color:Colors.purple[100],
                                ),
                    ),

                    ElevatedButton(
              onPressed: () {},
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
              ],
             mainAxisAlignment: MainAxisAlignment.center,
            ),
            
      ),
    );
  }
}
