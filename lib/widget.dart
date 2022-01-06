import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:siakadu/screens/pendidikan.dart';


class TasksWidget extends StatelessWidget {
  final String? title;
  final String? desc;
  final String? date;
  final String? code;
  final String? status;
  TasksWidget({this.title, this.desc,this.date,this.code,this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 18.0,
      ),
      margin: EdgeInsets.only(
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: Colors.black26,
            width: 1
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? "(Unnamed)",
                style: TextStyle(
                  color: Color(0xFF211511),
                  fontSize: 19.2,
                  fontWeight: FontWeight.bold,),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(children: <Widget>[
                    Text(date ?? "(Date)",
                      textAlign : TextAlign.right,
                      style: TextStyle(
                          color: Color(0xFF211511),
                          fontSize: 14.0,
                          height: 1.5),
                    )
                  ],
                  ),
                ),
              ),

            ],
          ),
          Container(
            width: double.infinity,
            height: 2,
            margin: EdgeInsets.only(
              top: 5.0,
              bottom: 7.0,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.only(
                  right: 6.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(
                    color: Color(0xFF868290),
                    width: 0.5,
                  ),
                ),
              ),
              Text(
                desc ?? "(No descripton added.)",
                style: TextStyle(
                  color: Color(0xFF868290),
                  fontSize: 18.0,
                  height: 1.5,
                ),
              ),


              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: <Widget>[
                      Text(
                       "Status :",
                        style: TextStyle(
                          color: Color(0xFF86829D),
                          height: 1.5,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                              status ??"No Status",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 0.5,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    code ?? "(No descripton.)",
                    style: TextStyle(
                      color: Color(0xFF86829D),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 24.0,
      ),
      margin: EdgeInsets.only(
        bottom: 4.0,
      ),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
            color: Colors.black26,
            width: 0.5
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/pendidikan.png'),
                          Text(
                            'Pendidikan',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pendidikan()),);
                    },

                  ),
                ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/registrasi.png'),
                    Text(
                      'Registrasi',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/wisuda.png'),
                    Text(
                      'Wisuda',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/minatbakat.png'),
                    Text(
                      'Minat/Bakat',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

