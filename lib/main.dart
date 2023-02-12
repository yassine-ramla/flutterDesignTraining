import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI training",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color firstBottomBorderColor = Colors.green;
  Color secondBottomBorderColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Color fontColor = Color.fromARGB(255, 79, 90, 80);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Claire's Level Up Program",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.more_vert, color: fontColor))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    firstBottomBorderColor = Colors.green;
                    secondBottomBorderColor = Colors.white;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: .5 * screenSize.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            width: 3, color: firstBottomBorderColor)),
                  ),
                  child: Text(
                    "Focus",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: fontColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    firstBottomBorderColor = Colors.white;
                    secondBottomBorderColor = Colors.green;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: .5 * screenSize.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            width: 3, color: secondBottomBorderColor)),
                  ),
                  child: Text(
                    "Plan",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: fontColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(75),
                bottomLeft: Radius.circular(75),
                bottomRight: Radius.circular(75)),
            child: Image.asset(
              "assets/image.png",
              width: screenSize.width * .9,
              height: screenSize.height * .4,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: screenSize.width * .85,
            margin: const EdgeInsets.all(10),
            child: Text(
              "Next thing to do",
              style: TextStyle(color: fontColor, fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(0),
            width: screenSize.width * .85,
            child: Text(
              "First Career Pulse Assesment",
              style: TextStyle(
                  color: fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  height: 1),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: screenSize.width * .85,
            margin: const EdgeInsets.all(10),
            child: Text(
              "complete you assesment before the first choaching session.",
              style: TextStyle(
                  color: fontColor, fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: screenSize.width * .85,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: const Text(
              "Start the assesment",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
