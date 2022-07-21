import 'dart:io';
import 'package:addtransaksi/detadonasi.dart';
import 'package:addtransaksi/eventdet.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class TambahDonasi extends StatefulWidget {
  const TambahDonasi({Key? key}) : super(key: key);

  @override
  State<TambahDonasi> createState() => _TambahDonasiState();
}

class _TambahDonasiState extends State<TambahDonasi> {
  TextEditingController JudulDonasiInput = TextEditingController();
  TextEditingController NoRekInput = TextEditingController();
  TextEditingController KeteranganDonasiInput = TextEditingController();

  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Scrollbar(
          isAlwaysShown: true,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30, bottom: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text("Buat Data Donasi",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            flex: 45,
                            child: Container(
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Judul Donasi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    child: TextFormField(
                                      validator: (value) =>
                                          value != null ? "Harus Diisi" : null,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      controller: JudulDonasiInput,
                                      decoration: InputDecoration(
                                        filled: true,
                                          fillColor: Color(0xFFfef5e5),
                                        labelText: "Judul Donasi",
                                        hintText: "Masukan Judul Donasi",
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
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Nomor Rekening",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    child: TextFormField(
                                      validator: (value) =>
                                          value != null ? "Harus Diisi" : null,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      controller: JudulDonasiInput,
                                      decoration: InputDecoration(
                                        filled: true,
                                          fillColor: Color(0xFFfef5e5),
                                        labelText: "Nomor Rekening",
                                        hintText: "Masukan Nomor Rekening",
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
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Keterangan Kegiatan Donasi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    child: TextFormField(
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 5,
                                      validator: (value) =>
                                          value != null ? "Harus Diisi" : null,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      controller: JudulDonasiInput,
                                      decoration: InputDecoration(
                                        filled: true,
                                          fillColor: Color(0xFFfef5e5),
                                        labelText: "Keterangan Kegiatan Donasi",
                                        hintText:
                                            "Masukan Keterangan Kegiatan Donasi",
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
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(onPressed: (){Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                eventDet()),
                                      );}, child: Text("aaaa")),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailDonasi()),
                                      );
                                    },
                                    child: Text("Simpan"),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.amber),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.only(
                                                top: 16,
                                                bottom: 16,
                                                left: 40,
                                                right: 40)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                        textStyle: MaterialStateProperty.all(
                                            TextStyle(fontSize: 15))),
                                  ),
                                ],
                              ),
                            )),
                        Flexible(
                          flex: 28,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Unggah Kode QR",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          await getImage();
                                        },
                                        child: Text("Tambah Gambar"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.amber),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.only(
                                                    top: 16,
                                                    bottom: 16,
                                                    left: 20,
                                                    right: 20)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    side: BorderSide(color: Colors.black))),
                                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    image != null
                                        ? Container(
                                            height: 200,
                                            width: 200,
                                            child: Image.file(
                                              image!,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 27,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset('images/tangan.png')),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // body: Scrollbar(
        //     isAlwaysShown: true,
        //     child: SingleChildScrollView(
        //       child: Container(
        //         padding: EdgeInsets.all(30),
        //         child: Expanded(
        //           child: Column(
        //             children: [
        //               Align(
        //                 alignment: Alignment.centerLeft,
        //                 child: Text(
        //                   "Tambah Donasi",
        //                   style: TextStyle(
        //                       fontSize: 26, fontWeight: FontWeight.bold),
        //                 ),
        //               ),
        //               Align(
        //                   alignment: Alignment.centerLeft,
        //                   child: Text("Judul Donasi")),
        //               Form(
        //                 autovalidateMode: AutovalidateMode.onUserInteraction,
        //                 child: TextFormField(
        //                   validator: (value) =>
        //                       value != null ? "Harus Diisi" : null,
        //                   textAlignVertical: TextAlignVertical.center,
        //                   controller: JudulDonasiInput,
        //                   decoration: InputDecoration(
        //                     labelText: "Judul Donasi",
        //                     hintText: "Masukan Judul Donasi",
        //                     hintStyle: TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     labelStyle: TextStyle(
        //                       color: Colors.grey,
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     focusedBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Align(
        //                   alignment: Alignment.centerLeft,
        //                   child: Text("Nomor Rekening")),
        //               Form(
        //                 autovalidateMode: AutovalidateMode.onUserInteraction,
        //                 child: TextFormField(
        //                   validator: (value) =>
        //                       value != null ? "Harus Diisi" : null,
        //                   textAlignVertical: TextAlignVertical.center,
        //                   controller: NoRekInput,
        //                   decoration: InputDecoration(
        //                     labelText: "Nomor Rekening",
        //                     hintText: "Masukan Nomor Rekening",
        //                     hintStyle: TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     labelStyle: TextStyle(
        //                       color: Colors.grey,
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     focusedBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Align(
        //                   alignment: Alignment.centerLeft,
        //                   child: Text("Keterangan Kegiatan Donasi")),
        //               Form(
        //                 autovalidateMode: AutovalidateMode.onUserInteraction,
        //                 child: TextFormField(
        //                   validator: (value) =>
        //                       value != null ? "Harus Diisi" : null,
        //                   textAlignVertical: TextAlignVertical.center,
        //                   controller: KeteranganDonasiInput,
        //                   decoration: InputDecoration(
        //                     labelText: "Keterangan Kegiatan Donasi",
        //                     hintText: "Masukan Keterangan Kegiatan Donasi",
        //                     hintStyle: TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     labelStyle: TextStyle(
        //                       color: Colors.grey,
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                     focusedBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide(
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Column(
        //                     children: [
        //                       Align(
        //                           alignment: Alignment.centerLeft,
        //                           child: Text("Keterangan Kegiatan Donasi")),
        //                       image != null
        //                       ? Container(
        //                         height: 200,
        //                         width: 200,
        //                         child: Image.file(
        //                           image!, fit: BoxFit.cover,
        //                         ),
        //                       ): Container(

        //                       ),
        //                       ElevatedButton(onPressed: ()async{
        //                         await getImage();
        //                       }, child: Text("data"))
        //                     ],
        //                   ),
        //                   ElevatedButton(
        //             child: const Text(
        //               'TAMBAH',
        //               style: TextStyle(
        //                   color: Colors.black, fontWeight: FontWeight.bold),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                       context,
        //                       MaterialPageRoute(builder: (context) => DetailDonasi()),
        //                     );
        //             },
        //             style: ButtonStyle(
        //                 backgroundColor:
        //                     MaterialStateProperty.all(Colors.amber),
        //                 padding: MaterialStateProperty.all(EdgeInsets.only(
        //                     top: 16, bottom: 16, left: 40, right: 40)),
        //                 shape:
        //                     MaterialStateProperty.all<RoundedRectangleBorder>(
        //                         RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(20),
        //                 )),
        //                 textStyle:
        //                     MaterialStateProperty.all(TextStyle(fontSize: 15))),
        //           ),
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     )),
      ),
    );
  }
}
