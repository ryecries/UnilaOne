import 'package:flutter/material.dart';
import 'package:siakadu/widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 18.0,
        ),
        margin: EdgeInsets.only(
          bottom: 8.0,
        ),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/profil.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:[
                                Text("Nama",style: TextStyle(fontSize: 17),),
                                Text("NPM",style: TextStyle(fontSize: 17),),
                                Text("Semester",style: TextStyle(fontSize: 17),),
                                Text("Program Studi",style: TextStyle(fontSize: 17),),
                                Text("Jurusan",style: TextStyle(fontSize: 17),),
                                Text("Fakultas",style: TextStyle(fontSize: 17),),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 7,
                        ),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(": Muhammad Irfan Ardiansyah",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                              Text(": 1917051034",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                              Text(": 5",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                              Text(": S1 Ilmu Komputer",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                              Text(": Ilmu Komputer",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                              Text(": FMIPA",style: TextStyle(fontSize: 17,  color: Color(0xFF86829D),),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
