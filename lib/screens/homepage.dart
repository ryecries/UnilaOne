import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siakadu/screens/taskpage.dart';
import 'package:siakadu/widget.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> imgList = [
    'https://drive.google.com/uc?export=view&id=11jSlETlb4gk9WLQAdgTNI3EtmZthzBrZ',
    'https://drive.google.com/uc?export=view&id=13z-7Y40L9gVGv3Jyx27GIYby9Grk5IBj',
    'https://drive.google.com/uc?export=view&id=19W94xQMydjxwI7HdaSkFaR4x-hPLaGz0',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hai, Irfan"),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: ScrollConfiguration(
                      behavior: NoGlowBehavior(),
                      child: ListView(
                        children: [
                          Container(
                            child: CarouselSlider(
                              options: CarouselOptions(
                                autoPlay: true,
                                aspectRatio: 2.8,
                                enlargeCenterPage: false,
                                viewportFraction: 1.0,
                              ),
                              items: imgList
                                  .map((item) => Container(
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: ClipRRect(
                                      // borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                      child: Stack(
                                        children: <Widget>[
                                          Image.network(item, fit: BoxFit.cover, width: 1000.0),
                                          Positioned(
                                            bottom: 0.0,
                                            left: 0.0,
                                            right: 0.0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color.fromARGB(200, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0)
                                                  ],
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                ),
                                              ),

                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ))
                                  .toList(),
                            ),
                          ),
                          WorkWidget(),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              left: 4.0,
                            ),
                            child: Text('Pengajuan Aktif',
                              style: TextStyle(
                                color: Color(0xFF211511),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Taskpage(
                                    )),
                              ).then((value) {
                                setState(() {});
                              });
                            },
                            child: TasksWidget(
                                title: "Surat Kehilangan Slip UKT",
                                desc: "Serah Terima",
                                code: "Kode Pengajuan: A-19-602399",
                                date: "21-11-2021",
                                status: "Siap Unduh"
                            ),
                          ),
                          TasksWidget(
                              title: "Keterangan Mahasiswa Aktif",
                              desc: "Validasi",
                              code: "Kode Pengajuan: A-19-102392",
                              date: "28-11-2021",
                              status: "Siap Unduh",
                          ),
                          TasksWidget(
                            title: "Legalisir KHS",
                            desc: "Validasi",
                            code: "Kode Pengajuan: A-19-602992",
                            date: "29-11-2021",
                            status: "Berlangsung",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              // Positioned(
              //   bottom: 24.0,
              //   right: 0.0,
              //   child: GestureDetector(
              //     onTap: (){
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(builder : (context) => Taskpage()
              //         ),
              //       );
              //     },
              //     child: Container(
              //       width: 60.0,
              //       height: 60.0,
              //       decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: [Color(0xFF7349FE),Color(0xFF643FDB)],
              //           begin: Alignment(0.0, -1.0),
              //           end: Alignment(0.0, 1.0),
              //         ),
              //         borderRadius: BorderRadius.circular(25.0),
              //       ),
              //       child: Image(
              //         image: AssetImage(
              //           "assets/images/add_icon.png"
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),

    );
  }
}
