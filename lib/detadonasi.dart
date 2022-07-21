import 'package:flutter/material.dart';

class DetailDonasi extends StatefulWidget {
  const DetailDonasi({Key? key}) : super(key: key);

  @override
  State<DetailDonasi> createState() => _DetailDonasiState();
}

class _DetailDonasiState extends State<DetailDonasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amber,
            ),
            child: Row(
              children: [
                Flexible(flex: 60, child: Container(
                  child: Column(
                    children: [
                      Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                ),
                              ),
                            ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Align(alignment: Alignment.topLeft, child: Text("Judul Donasi", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                            SizedBox(height: 15,),
                            Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text("Total Donasi : Rp 3.000.000.000"),
                                Icon(Icons.edit)
                              ],
                            ),
                            SizedBox(height: 15,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: ElevatedButton(
                                            child: const Text(
                              'Tutup Donasi',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                                            ),
                                            onPressed: () {
                                            },
                                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                padding: MaterialStateProperty.all(EdgeInsets.only(
                                    top: 16, bottom: 16, left: 40, right: 40)),
                                shape:
                                    MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                                textStyle:
                                    MaterialStateProperty.all(TextStyle(fontSize: 15))),
                                          ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
                Flexible(
                    flex: 40,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.center, child: Image.asset('images/a.png', height: 200, width: 200,)),
                              SizedBox(height: 10),
                          Text("0819564356", style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
