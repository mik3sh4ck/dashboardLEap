import 'package:dashboard/constrant/lineChart.dart';
import 'package:dashboard/donasi.dart';
import 'package:dashboard/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dashboard/constrant/constrants.dart';
import 'constrant/cardNews.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:dashboard/constrant/cardSaldo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MaterialApp(
    home: Donasi(),
  ));
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36,
                                  fontFamily: 'Nunito'),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Denny Lianto",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36,
                                  fontFamily: 'Nunito'),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                child: Column(
                              children: [
                                CardNews(),
                                SizedBox(
                                  height: 10,
                                ),
                                CardNews(),
                                SizedBox(
                                  height: 10,
                                ),
                                CardNews(),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
                  child: Row(
                    children: [
                      ReusableCardSaldo(Title: "saldo", Saldo: 20000),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableCardSaldo(Title: "Pemasukan", Saldo: 20000),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableCardSaldo(Title: "Pengeluaran", Saldo: 20000)
                    ],
                  ),
                ),
                Container(
                    height: 500,
                    width: 1200,
                    padding: EdgeInsets.only(right: 10, bottom: 10),
                    child: LineChartSample1()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCardNews extends StatelessWidget {
  ReusableCardNews({required this.Title, required this.Desc});
  final String Title;
  final String Desc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          children: [
            Text("$Title"),
            SizedBox(
              height: 20.0,
            ),
            Text("$Desc"),
          ],
        ),
      ),
    );
  }
}
