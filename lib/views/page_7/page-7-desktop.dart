import 'package:flutter/material.dart';

class Page7Desktop extends StatelessWidget {
  final _inputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.black54,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    hintStyle: TextStyle(color: Colors.white70),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    GridView.count(
                      crossAxisCount: 1,
                      shrinkWrap: true,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 5,
                      children: [
                        contactBox(Icons.map_outlined ,"382 Waldo Ave SE Salem, Oregon"),
                        contactBox(Icons.phone, "932-415-832-938"),
                        contactBox(Icons.email, "animal@example.com"),
                        contactBox(Icons.check_circle, "Freelance Available"),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 40),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Contact With Me",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 30),

                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: _inputDecoration.copyWith(hintText: "Enter Your Name"),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextField(
                            decoration: _inputDecoration.copyWith(hintText: "Enter Your Phone"),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: _inputDecoration.copyWith(hintText: "Enter Your Email"),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextField(
                            decoration: _inputDecoration.copyWith(hintText: "Enter Your Subject"),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      maxLines: 6,
                      decoration: _inputDecoration.copyWith(hintText: "Type Your Message"),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                        label: Text("Send Message"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactBox(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Icon(icon, color: Colors.redAccent, size: 35),
          SizedBox(height: 5,),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
