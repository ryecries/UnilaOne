import 'package:flutter/material.dart';
import 'package:siakadu/models/chatUsersModel.dart';
import 'package:siakadu/conversationList.dart';

class AdminChat extends StatefulWidget {
  const AdminChat({Key? key}) : super(key: key);

  @override
  _AdminChatState createState() => _AdminChatState();
}


class _AdminChatState extends State<AdminChat> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Maya Setyaningsih", messageText: "Ada yang bisa saya bantu?", imageURL: "https://randomuser.me/api/portraits/women/11.jpg", time: "Now"),
    ChatUsers(name: "Arief Munarwan", messageText: "Terima kasih, Senang membantu anda ", imageURL: "https://randomuser.me/api/portraits/men/11.jpg", time: "Yesterday"),
    ChatUsers(name: "Agus Tano", messageText: "Terima kasih, Senang membantu anda", imageURL: "https://randomuser.me/api/portraits/men/9.jpg", time: "Yesterday"),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Admin")),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 1.0,
            vertical: 1.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: ListView(
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
                                child: Center(child: Text("Obrolan",style: TextStyle(fontSize: 18))),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                width: double.infinity,
                                child: Center(child: Text("Panggilan",style: TextStyle(fontSize: 18))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Cari",
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade100
                                )
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: chatUsers.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 16),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index){
                          return ConversationList(
                            name: chatUsers[index].name,
                            messageText: chatUsers[index].messageText,
                            imageUrl: chatUsers[index].imageURL,
                            time: chatUsers[index].time,
                            isMessageRead: (index == 0 || index == 3)?true:false,
                          );
                        },
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



