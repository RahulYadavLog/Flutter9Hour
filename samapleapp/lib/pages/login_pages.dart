import 'package:flutter/material.dart';
import 'package:samapleapp/utils/route_s.dart';
class LoginPage  extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
child: SingleChildScrollView(
  child:   Column(children: [Image.asset("assets/images/img1.png",fit: BoxFit.cover,
  
  ),
  
  SizedBox(height: 20,),
  
  Text("Welcome $name",style:
  
   TextStyle(fontSize:28 ,
  
   fontWeight: FontWeight.bold),
  
   ),
  
  SizedBox(height: 20,),
  
  Padding(
  
    padding: const EdgeInsets.all(16.0),
  
    child:   Column(children: [TextFormField(decoration: InputDecoration(hintText: "Enter User Name",labelText: "UserName"),
    onChanged: (value)
    {
      name=value;
      setState(() {
        
      });
    },
    ),

  
    
  
    TextFormField(obscureText: true,decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
  
    
  
    ),
  
    SizedBox(height: 40,),
  

  InkWell(
    child: AnimatedContainer(
      duration:Duration(seconds: 1),
      width:changeButton?50: 150,
      height: 50,
    
      alignment: Alignment.center,
      child: changeButton?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
      decoration: BoxDecoration( color: Colors.deepPurple,
      // shape:changeButton? BoxShape.circle :BoxShape.rectangle,
      borderRadius: BorderRadius.circular(changeButton?20:8)
  ),
    
    ),
    onTap: ()async
    {
      setState(() {
        changeButton=true;
      });
      await Future.delayed(Duration(seconds: 1));
     Navigator.pushNamed(context, MyRoutes.homeRoutes);

    },
  )
  
    // ElevatedButton(onPressed: ()
  
    // {
  
    //   Navigator.pushNamed(context, MyRoutes.homeRoutes);
  
  
  
    // }, child: Text("Login"),
  
    // style: TextButton.styleFrom(minimumSize: Size(150, 40)))
    
    ],
  
    
  
    
  
    ),
  
  
  
  
  
  )
  
  
  
  
  
  
  
  ],),
),
    );
      
  }
}