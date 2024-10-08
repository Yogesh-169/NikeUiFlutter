import 'package:flutter/material.dart';
import 'package:nikeui/pages/homePage.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 240,
                ),
              ),

              SizedBox(height: 48,),

              Text(
                  "Just Do It",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 48,),
              Text(
                "Brand new Sneakers and Custom kicks with premium quality",
                style: TextStyle(
                    fontSize: 16,
                    color:Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 48,),
              
              GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>Homepage(),
                )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child: Text("Shop Now",
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),),
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
