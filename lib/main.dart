import 'package:course/welcome.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(SignInPage());

}
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(centerTitle: true,title: Text("SIGN IN"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          FlutterLogo(size: 150),
          //SizedBox(width: 50,height: 50,child:Image.asset("assets/logo.png",width:50,height:50)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(keyboardType: TextInputType.phone,decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(),hintText: "phone"),validator: (value) {
      if (value!.length>8&&value.length<10) {
      return 'Please enter correct phone';
      }
      return null;
      },),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(decoration: InputDecoration(
                labelText: "password"),validator: (value) {
          if (value!.length>8&&value.length<10) {
          return 'Please enter correct password';
          }
          return null;
          },),
          ),
          ElevatedButton(child: Text("login"), onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const welcomePage()),
            );

          }
          ),

        ],),
      ),
      ),
    );
  }
}
