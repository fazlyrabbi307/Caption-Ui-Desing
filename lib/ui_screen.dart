import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {

  List pageTaxt = [
    {
      "id" : "১",
      "golpo" : "অন্যের জীবন নষ্ট করা মানুষগুলো অন্যায় করার সময় ভুলে যায় বিচারদিবসের মালিকের কথা!!"
    },
    {
      "id" : "২",
      "golpo" : "আমার জিহ্বা হিসাব একটা জিনিস যেমন, যদি আমি হেরে দিই; তাহলে এটা আবার কেড়ে ফেলেন। এজন্য এতো দীর্ঘ সময় আমি চুপ করে থাকি!!"
    },
    {
      "id" : "৩",
      "golpo" : "ভালো আচরণ এর বিনিময়ে সকলেই ভালাই প্রত্যাশা করতে পারে। তবে আপনি পারলে খারাপ আচরণের বিনিময়ে উত্তম আচরণ করে দেখান!!"
    },
    {
      "id" : "৪",
      "golpo" : "যেদিন মানুষের হাত-পা, চোখ-কান সবই নিজের বিরুদ্ধে সাক্ষী দেবে— সেদিন কেউ কাউকে সাহায্য করতে পারবে না। সেটাই বিচারদিবস!!"
    },
    {
      "id" : "৫",
      "golpo" : "দুনিয়ার অন্যায় আদালত থেকে রেহাই পাওয়া গেলেও, বিচারদিবসের আদালতে কোনো অন্যায়ই গোপন থাকবে না!!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAB6A4),
      appBar: AppBar(
        backgroundColor: Color(0xff795545),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 14,
            child: Icon(Icons.arrow_back_outlined, color: Colors.black),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                "বিচার দিবস",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: pageTaxt.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.2),
                        offset: Offset(-3, 1),
                        blurRadius: 7,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: Offset(3, 4),
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff795545),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(9),
                            topLeft: Radius.circular(9),
                          ),
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Container(
                              height: 33,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "${pageTaxt[index]["id"]}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Text(
                              "বিচার দিবস",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                offset: Offset(-3, 1),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                  "${pageTaxt[index]["golpo"]}",
                                style: TextStyle(fontSize: 18,color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff795545),
                              radius: 20,
                              child: Icon(Icons.content_copy_outlined, color: Colors.white),
                            ),
                            Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xff795545),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.share,color: Colors.white,),
                                    Text(
                                        "শেয়ার করুন…",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
