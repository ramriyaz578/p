import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var dummyData = <Map>[
    {
      "id": 1,
      "name": "Avinash",
      "imageURL": "https://www.w3schools.com/w3images/avatar2.png"
    },
    {
      "id": 2,
      "name": "Krishna",
      "imageURL": "https://www.w3schools.com/howto/img_avatar.png"
    },
    {
      "id": 3,
      "name": "Senthil",
      "imageURL":
          "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    },
    {
      "id": 4,
      "name": "Deva",
      "imageURL":
          "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    },
    {
      "id": 5,
      "name": "Deva",
      "imageURL":
          "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    },
    {
      "id": 6,
      "name": "Deva",
      "imageURL":
          "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    }
  ];

  deleteContact(index) {
    setState(() {
      dummyData.removeAt(index);
    });
  }

  //  double fontvalue = 20;

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(31, 202, 198, 198),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 246, 220),
        title: Text("Sample App", style: GoogleFonts.poppins()),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // setState(() {
              //   fontvalue --;
              // });
            },
            child: Text("click me"),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 182, 69, 69),
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: dummyData.length,
        separatorBuilder: (BuildContext context, int index) {
          // return (Divider(     border underline
          //   height: 50,
          //   thickness: 4,
          // ));
          return (SizedBox(
            height: 20,
          ));
        },
        itemBuilder: (BuildContext context, int index) {
          return (ListTile(
            leading: Image.network(dummyData[index]["imageURL"]),
            title: Text(
              dummyData[index]["name"],
              style: GoogleFonts.poppins(),
            ),
            subtitle: Text(
              "+1234567890",
              style: GoogleFonts.poppins(fontSize: 12),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteContact(index);
              },
            ), // condutton
          )); // ListTile
        },
      ),
    );
  }
}
                 
 // ListView.builder)
      // Center(
      //   child: Text("Hello, World!", style: TextStyle(fontSize: fontvalue),),
      // ),
      // Container(
      //   width: 500,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
        
      //           Container(
      //             width: 50,
      //             height: 50,
      //             color: const Color.fromARGB(255, 226, 243, 33),
      //           ),
      //            Container(
      //             width: 50,
      //             height: 50,
      //             color: const Color.fromARGB(255, 28, 7, 186),
      //           ),
      //            Container(
      //             width: 50,
      //             height: 50,
      //             color: const Color.fromARGB(255, 35, 226, 10),
      //           ),
      //            Container(
      //             width: 50,
      //             height: 50,
      //             color: const Color.fromARGB(255, 221, 6, 160),
      //           ),
      //         ],
      //       // Center(
      //       //   child:
      //       //   Image.asset("assets/images.jpg")
      //         // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcmPkulXxA4nGmG7GxkgsMsrzTgw7IZkCpof2WS6Yp73JC36l8VSYPTwqIpK9V_nzULiU&usqp=CAU')
      //       ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color.fromARGB(255, 3, 7, 197),
      //   onPressed:(){
      //     setState(() {
      //       fontvalue++ ;
      //     });
          
      //     // print(fontvalue);
      //   },
      //   child: Icon(Icons.add)),

      
   

// void main(){
//   runApp(
//     MaterialApp(home: App()));
// }

// class App extends StatelessWidget{
//       Widget build(BuildContext context){
//         return Text("ram");
//       }
// }