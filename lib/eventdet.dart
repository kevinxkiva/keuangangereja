import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class eventDet extends StatefulWidget {
  const eventDet({Key? key}) : super(key: key);

  @override
  State<eventDet> createState() => _eventDetState();
}

class _eventDetState extends State<eventDet> {
  Future<void> _showMyDialog2() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            titlePadding: EdgeInsets.all(0),
            contentPadding: EdgeInsets.all(0),
            title: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Colors.amber,
              ),
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'TAMBAH PENGELUARAN KEGIATAN',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => eventDet()),
                            );
                          },
                          icon: Icon(Icons.cancel_outlined, size: 36)))
                ],
              ),
            ),
            content: SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 800,
                height: 250,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text("Judul Pengeluaran",
                            style: TextStyle(fontSize: 15, color: Colors.black))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: (value) =>
                            value != null ? "Harus Diisi" : null,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: "Judul Pengeluaran",
                          hintText: "Masukan Judul Pengeluaran",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text("Nominal",
                            style: TextStyle(fontSize: 15, color: Colors.black))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: (value) =>
                            value != null ? "Harus Diisi" : null,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: "Nominal",
                          hintText: "Masukan Nominal",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    child: const Text(
                      'TAMBAH',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eventDet()),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                        padding: MaterialStateProperty.all(EdgeInsets.only(
                            top: 20, bottom: 20, left: 56, right: 56)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Kegiatan A",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(1),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            width: 180,
                            height: 88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color(0xFFFFE16B),
                                    Color(0xfffff6d2),
                                  ]),
                              boxShadow: [
                                BoxShadow(color: Colors.black, spreadRadius: 1),
                              ],
                            ),
                            child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Saldo"),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      Text("Rp 15.000.000"),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: EdgeInsets.all(1),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            width: 180,
                            height: 88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color(0xFFFFE16B),
                                    Color(0xfffff6d2),
                                  ]),
                              boxShadow: [
                                BoxShadow(color: Colors.black, spreadRadius: 1),
                              ],
                            ),
                            child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Total Pengeluaran"),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      Text("Rp 15.000.000"),
                                    ],
                                  ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _showMyDialog2();
                        },
                        child: Text("Tambah Pengeluaran"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber),
                            padding: MaterialStateProperty.all(EdgeInsets.only(
                                top: 16, bottom: 16, left: 20, right: 20)),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 15))),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      tileColor: Color(0xFFfef5e5),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Judul Kegiatan',
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    color: Colors.black.withOpacity(1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                "Tanggal Dibuat",
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat detail',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              color: Color(0xFFf9ab27),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return Divider(
                      height: 10,
                      color: Colors.transparent,
                    );
                  },
                  itemCount: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
