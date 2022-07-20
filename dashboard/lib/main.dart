import 'package:dashboard/Dashboard.dart';
import 'package:dashboard/constrant/lineChart.dart';
import 'package:dashboard/donasi.dart';
import 'package:dashboard/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dashboard/constrant/constrants.dart';
import 'constrant/cardNews.dart';
import 'package:dashboard/constrant/cardSaldo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MaterialApp(
    home: Dashboard(),
  ));
}
