import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publicoffer/components/company_card.dart';
import 'package:publicoffer/constants/constants.dart';
import 'package:publicoffer/models/publicOffer.dart';
import '../providers/provider.dart';
import '../components/text_widget_.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<modelProvider>(context);
    List<List> list = provider.listOffer();
    List<String> images = [];
    //print(list);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber[100],
          title: Text(
            "Anasayfa",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text(
                  "Yenile",
                  style: TextStyle(color: Colors.black),
                )),
          ]),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 0.85,
          child: ListView.builder(
              itemCount: list[0].length,
              itemBuilder: (context, index) {
                images.add(Faker().image.image(random: true));
                return CompanyCard(
                  textWidget("Firma: ", list[0][index]),
                  textWidget("Tarih: ", list[1][index]),
                  context,
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.notifications_on,
                      color: Colors.black,
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
