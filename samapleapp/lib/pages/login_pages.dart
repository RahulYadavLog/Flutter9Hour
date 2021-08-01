import 'package:flutter/material.dart';
import 'package:samapleapp/utils/route_s.dart';
import 'package:velocity_x/velocity_x.dart';
class LoginPage  extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate())
    {
      setState(() {
            changeButton=true;
          });
          await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoutes);
    setState(() {
            changeButton=false;
          });
    }
    else{
       
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
child: SingleChildScrollView(
  child:   Form(
    key: _formKey,
    child: Column(children: [Image.asset("assets/images/img1.png",fit: BoxFit.cover,
    
    ),
    

    SizedBox(height: 20,),
    
    Text("Welcome $name",style:
    
     TextStyle(fontSize:28 ,
    
     fontWeight: FontWeight.bold),
    
     ),
    
    SizedBox(height: 20,),
    
    Padding(
    
      padding: const EdgeInsets.all(16.0),
    
      child:   Column(children: [TextFormField(decoration: InputDecoration(hintText: "Enter User Name",
      labelText: "UserName"),
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return "User Name Cannot be empty";
        }
        else{
            return null;
          }
      },

      onChanged: (value)
      {
        name=value;
        setState(() {
          
        });
      },
      ),
  
    
      
    
      TextFormField(obscureText: true,decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
       validator: (value)
      {
        if(value!.isEmpty)
        {
          return "Password Cannot be empty";
        }
        else if(value.length<6)
        {
          return "Password length Should be atleast 6";
        }
        else{
            return null;
          }
      }
    
      
    
      ),
    
      SizedBox(height: 40,),
    
  
    Material(
      color: context.theme.buttonColor,
        borderRadius: BorderRadius.circular(changeButton?20:8),
      child: InkWell(
        child: AnimatedContainer(
          duration:Duration(seconds: 1),
          width:changeButton?50: 150,
          height: 50,
        
          alignment: Alignment.center,
          child: changeButton?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
      //     decoration: BoxDecoration( color: Colors.deepPurple,
      //     // shape:changeButton? BoxShape.circle :BoxShape.rectangle,
        
      // ),
        
        ),
        onTap: ()=>moveToHome(context),
      ),
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
),
    );
      
  }
}