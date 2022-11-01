
import 'package:flutter/material.dart';
import 'package:sesim_ol/signin_page.dart';

class GetStartedPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4-50,
            ),
            Hero(
              tag: 'assets/logo.png"',
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"),
                            fit: BoxFit.contain))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Welcome to the SesimOl',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(20.0),
                child: Text(

                  'SesimOl application can heal people who can perceive artificial intelligence-supported voices and complete sentences by perception of patients with parliament, individuals with speaking disorders, persons with autism and visual disability.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          margin: EdgeInsets.only(bottom: 20, top: 0, left: 10, right: 10),
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: TextButton(
            child: Text('Get Started',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            onPressed: () {

              Navigator.pop(context);

              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignInPage()));


            },
          ),
        ));
  }
}
