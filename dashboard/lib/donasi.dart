import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Donasi extends StatefulWidget {
  const Donasi({Key? key}) : super(key: key);

  @override
  State<Donasi> createState() => _DonasiState();
}

class _DonasiState extends State<Donasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("donasi")),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Donasi",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonDonasi(
                      text: "Detail Donasi Aktif",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ButtonDonasi(
                      text: "Riwayat Aksi Donasi",
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.yellow,
                      ),
                      child: Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add),
                          SizedBox(
                            width: 15,
                          ),
                          Text('tambah donasi'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(48, 249, 172, 39),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("mencet donasi $index");
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        margin: EdgeInsets.only(bottom: 10),
                        height: 80.0,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text("Donasi $index"),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: Text(">"),
                              padding: EdgeInsets.all(10),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}

class ButtonDonasi extends StatelessWidget {
  final String text;

  ButtonDonasi({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print("mencet tombol $text");
      }),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(color: Colors.black, width: 1),
          color: Colors.yellow,
        ),
        child: Text(
          "$text",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
