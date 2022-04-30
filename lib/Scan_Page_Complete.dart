import 'package:flutter/material.dart';

class ScanCompletePage extends StatefulWidget {
  const ScanCompletePage({ Key? key }) : super(key: key);

  @override
  State<ScanCompletePage> createState() => _ScanCompletePageState();
}

class _ScanCompletePageState extends State<ScanCompletePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_sharp,
            color: Colors.grey,
            size: 35.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner),
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),

      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 25),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Whats Up Bud?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                
                SizedBox(height: 14),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Scan Your Product",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.8,
                  width: screenWidth,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Column(
                          children: [
                            SizedBox(height: 27),

                            SizedBox(
                              height: 200,
                              width: 200,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.green,
                                    spreadRadius:3)
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.green
                                    )
                                ),
                              ),
                            ),

                            SizedBox(height: 40),

                            Text("Scan Successful",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),),
                            
                            SizedBox(height: 35),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Scanned Item",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}