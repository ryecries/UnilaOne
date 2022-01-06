import 'package:flutter/material.dart';

import '../nav.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 90,
            ),
              child: Stack(
                children: [
                  ListView(
                    children: [
                       Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40,
                                right: 50,
                                top: 55
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.asset('assets/images/logounila.png',
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 28,
                                    ),
                                    child: Text(
                                      "Unila One", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 18,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Username",
                                style: TextStyle(
                                  fontSize: 18,
                                ),),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey,width: 1)
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextField(
                                    decoration: new InputDecoration.collapsed(
                                        hintText: 'Username'
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 18,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: 18,
                                ),),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey,width: 1)
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: new InputDecoration.collapsed(
                                        hintText: 'Password'
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 36,
                            ),
                              child: ElevatedButton(
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 90,vertical: 8),
                                    child: Text("Masuk",style: TextStyle(fontSize: 24),)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Nav()),);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ),
        ),
      ),

    );
  }
}
