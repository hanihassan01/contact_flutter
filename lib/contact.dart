import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'John Doe', phoneNumber: '123-456-7890'),
    Contact(name: 'Jane Smith', phoneNumber: '555-555-5555'),
    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contact"),
        backgroundColor: Colors.deepPurple,
        actions: [
  
         IconButton(onPressed: () {  }, icon: Icon(Icons.add),
  
        ),
  
         IconButton(onPressed:() {  }, icon: Icon(Icons.search),
  
        ),
       PopupMenuButton<String>(
        onSelected: (value) {
          print(value);
        },
        itemBuilder:(BuildContext context) {
         return[
          PopupMenuItem(child: Text("new group"),value: "new group",),
          PopupMenuItem(child: Text("new broadcast"),value: "new broadcast",),
          PopupMenuItem(child: Text("call"),value: "call",),
          PopupMenuItem(child: Text("start mesage"),value: "start mesage",),
          PopupMenuItem(child: Text("settings"),value: "settings",),

         ];
       }, )
  
       ],
      ),
      drawer:Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(child: Text("L O G",style: TextStyle(fontSize: 40),)
              ,)
              ,ListTile(
                leading: Icon(Icons.home),
                title: Text("pagr1",style: TextStyle(fontSize: 20),),
        
        
                        onTap: (){},
              )
            ],
          ),
        ),
      ) ,
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            
            leading: CircleAvatar(backgroundColor:Colors.deepPurple  ,
          radius: 25,
          child:  Icon(Icons.person),
        ),
           
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            onTap: () {
             
            },
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact({
    required this.name,
    required this.phoneNumber,
  });
}