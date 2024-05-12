import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06141D),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B2730),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 10, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Antara Paul', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)),
              SizedBox(height: 5),
              Text('21 posts', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18))
            ],
          ),
        ),
        toolbarHeight: 90,
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/564x/6f/7f/81/6f7f81e5c6e404854cdd02af0c3615d5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 18,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF06141D), width: 12),
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://i.pinimg.com/564x/b0/75/f8/b075f8b232d3bf57d41893afa5070597.jpg'),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height:200),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Button pressed');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 159, 159, 159)), borderRadius: BorderRadius.circular(100)),
                      child: Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Antara Paul', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 27)),
                      SizedBox(height:5),
                      Text('@Paul_Antara04', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20)),
                      SizedBox(height:25),
                      Text('Organizer @rebase_01 | @gdsciiitkalyani Creative Lead | @fossiiitkalyani Core team member', style:TextStyle(fontWeight: FontWeight.w300, color: Colors.white54, fontSize: 18))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
