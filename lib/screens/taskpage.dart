import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siakadu/nav.dart';
import 'package:siakadu/screens/homepage.dart';
import 'package:siakadu/widget.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Detail Pengajuan"),
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
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Surat Kehilangan Slip UKT",
                      style: TextStyle(
                        color: Color(0xFF211511),
                        fontSize: 19.2,
                        fontWeight: FontWeight.bold,),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(children: <Widget>[
                          Text("20-11-2021",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text("Kode Pengajuan",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              Text("NPM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              Text("Nama",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              Text("Pembimbing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              Text("Estimasi Selesai",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(": A-19-847132",style: TextStyle(fontSize: 14),),
                            Text(": 1917051034",style: TextStyle(fontSize: 14),),
                            Text(": Muhammad Irfan Ardiansyah",style: TextStyle(fontSize: 14),),
                            Text(": Riki, S.Kom,M.Kom.",style: TextStyle(fontSize: 14),),
                            Text(": Selesai",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      ),
                    ),


                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Status :",
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green
                              ),
                              child: Center(
                                child: Text(
                                    "Selesai",style: TextStyle(color: Colors.white
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tahapan",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 20,
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        margin: EdgeInsets.only(
                                          right: 18.0,
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Berkas Diterima",style: TextStyle(fontSize: 17),),
                                          Text("Berkas berhasil diterima oleh sistem",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            child: Text("20-11-2021",style: TextStyle(fontSize: 14)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        margin: EdgeInsets.only(
                                          right: 18.0,
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Validasi",style: TextStyle(fontSize: 17),),
                                          Text("Berkas telah divalidasi oleh admin",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            child: Text("20-11-2021",style: TextStyle(fontSize: 14)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        margin: EdgeInsets.only(
                                          right: 18.0,
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Proses",style: TextStyle(fontSize: 17),),
                                          Text("Berkas anda sedang di proses",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            child: Text("21-11-2021",style: TextStyle(fontSize: 14)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        margin: EdgeInsets.only(
                                          right: 18.0,
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Diterbitkan",style: TextStyle(fontSize: 17),),
                                          Text("Berkas telah diterbitkan",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            child: Text("22-11-2021",style: TextStyle(fontSize: 14)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        margin: EdgeInsets.only(
                                          right: 18.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(32.0),
                                          border: Border.all(
                                            color: Colors.green,
                                            width: 3.5,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Serah terima",style: TextStyle(fontSize: 17),),
                                          Text("Berkas siap untuk diunduh!",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            child: Text("22-11-2021",style: TextStyle(fontSize: 14)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 140,
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 40,
                                    ),
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                                          child: Text("Download",style: TextStyle(fontSize: 24),)),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Nav()),);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF00BA30),
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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
