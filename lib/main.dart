import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Layout Login by loudy", style: TextStyle(color: Colors.white),),
          backgroundColor: const Color.fromARGB(255, 255, 119, 28),
        
        ),
        body: Center(child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Image(image: AssetImage("assets/logoborder.png"),width: 130,),
            ),
            Text('Welcome To Praktikum Mobile <3', style: TextStyle(color: Colors.white)),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Username',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
                  
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
                ),
              ),
            ),

            SizedBox(
              width: 200,
              child: TextButton(
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255))),
                onPressed: (){}, 
                child: const Text('login',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),)
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text("Forget Password?",style: TextStyle(color:Colors.white),),
                  ),
                )
            
            ],
          ),
        )),
      ),
    );
  }
}
