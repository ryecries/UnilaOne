import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:siakadu/nav.dart';
import 'package:siakadu/screens/pendidikan.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({Key? key}) : super(key: key);

  @override
  _KhsPageState createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  final items =['Semester 1','Semester 2','Semester 3','Semester 4','Semester 5','Semester 6','Semester 7','Semester 8',];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Legalisir KHS"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 18,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Layanan :",
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
                  child: Text(
                    "Legalisir KHS",style: TextStyle(fontSize: 18),
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
                "Nama :",
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
                  child: Text(
                    "Muhammad Irfan Ardiansyah",style: TextStyle(fontSize: 18),
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
                "NPM :",
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
                  child: Text(
                    "1917051034",style: TextStyle(fontSize: 18),
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
                "Pembimbing :",
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
                  border: Border.all(color: Colors.grey,width: 1),
              ),
              child: Container(
                width: double.infinity,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Riki, S.Kom.,M.Kom.",style: TextStyle(fontSize: 18),
                  ),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 18,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Semester yang ingin dilegalisir :",
                style: TextStyle(
                  fontSize: 18,
                ),),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey,width: 0.7)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text('Pilih Semester'),
                value: value,
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down,color: Colors.black),
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 40,
        ),
        width: double.infinity,
        child: ElevatedButton(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Text("Kirim",style: TextStyle(fontSize: 24),)),
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
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 20),
    ),
  );
}
