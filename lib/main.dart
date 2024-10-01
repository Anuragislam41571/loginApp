import 'package:flutter/material.dart';

void main (){
  
  
  
  
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    theme: ThemeData(

      appBarTheme: AppBarTheme(

        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900



        ),
        backgroundColor: Colors.blue


      )

    ),
    );
  }
}
class home  extends StatelessWidget {
  const home ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      
      decoration: BoxDecoration(
        
        image: DecorationImage(image: NetworkImage('https://png.pngtree.com/thumb_back/fw800/background/20231230/pngtree-wooden-texture-login-form-enhancing-aesthetic-appeal-image_13918200.png'),
        fit: BoxFit.cover

        ),

      ),
      
      child: Scaffold(

        appBar: AppBar(
          title: Text('NASA'),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
       body: Padding(
         padding: const EdgeInsets.all(50.0),
         child: Column(
      
      
           children: [
      
      
      
      
             TextField(

      
               decoration: InputDecoration(

      fillColor: Colors.white,
                 labelText: 'Email',
                 labelStyle: TextStyle(
                   color: Colors.white
                 ),
                 prefixIcon: Icon(Icons.email,color: Colors.white,),
      
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(4),
                   borderSide: BorderSide(width: 2)
      
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 2,color: Colors.blue)

                 ),
                 focusedBorder: OutlineInputBorder(
      
                     borderRadius: BorderRadius.circular(4),
                     borderSide: BorderSide(width: 2,color: Colors.blue),
      
      
                 )
      
      
      
      
               ),
             ),
             SizedBox(
               height: 20,
             ),
      
             TextField(
      
               decoration: InputDecoration(
      
                   labelText: 'pass',
                   labelStyle: TextStyle(
                       color: Colors.white
                   ),

                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(4),
                       borderSide: BorderSide(width: 2,color: Colors.black)
      
                   ),
                   enabledBorder:OutlineInputBorder(

                     borderRadius: BorderRadius.circular(4),
                     borderSide: BorderSide(width: 2,color: Colors.blue),


                   ) ,
                   focusedBorder: OutlineInputBorder(
      
                     borderRadius: BorderRadius.circular(4),
                     borderSide: BorderSide(width: 2,color: Colors.blue),
      
      
                   )
      
      
      
      
               ),
             ),
             SizedBox(
               height: 20,
             ),
      
      
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
      
                   backgroundColor: Colors.blue,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(4),
                     side: BorderSide(width: 2,color: Colors.black)
                   ),
      
      
                   foregroundColor: Colors.white
      
                 ),
                 onPressed: (){
                   
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                       backgroundColor: Colors.blue,
                       content: Text('Please wait....')));
                 }, child: Text('LOG IN'))
      
      
      
           ],
         ),
       ),
      ),
    );
  }
}

