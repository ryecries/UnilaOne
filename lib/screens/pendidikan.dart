import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:siakadu/screens/khs.dart';

class Pendidikan extends StatefulWidget {
  const Pendidikan({Key? key}) : super(key: key);

  @override
  _PendidikanState createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  final items =['Legalisir KHS','Legalisir KTM','Legalisir IPK'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Administrasi Pendidikan"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5, color: Colors.black),
                      ),
                    ),
                    child: Center(child: Text("Tambah Pengajuan",style: TextStyle(fontSize: 18))),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    width: double.infinity,
                    child: Center(child: Text("Daftar Pengajuan",style: TextStyle(fontSize: 18))),
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
                  "Layanan",
              style: TextStyle(
                fontSize: 24,
              ),),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey,width: 0.7)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text('Pilih Layanan'),
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
              child: Text("Selanjutnya",style: TextStyle(fontSize: 24),)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => KhsPage()),);
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
